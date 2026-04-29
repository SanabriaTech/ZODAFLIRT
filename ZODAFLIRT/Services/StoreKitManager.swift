//
//  StoreKitManager.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import Foundation
import StoreKit
import Observation
import os

private let logger = Logger(subsystem: "SanTech.ZODA", category: "StoreKit")

@Observable
@MainActor
final class StoreKitManager {

    // MARK: - Product IDs

    static let monthlyProductID = "SanTech.ZODA.premium.monthly"
    static let yearlyProductID = "SanTech.ZODA.premium.yearly"

    // MARK: - Observable Properties

    private(set) var products: [Product] = []
    private(set) var purchasedProductIDs: Set<String> = []
    private(set) var isLoading = false
    private(set) var errorMessage: String?

    // MARK: - Computed Properties

    var hasActiveSubscription: Bool {
        !purchasedProductIDs.isEmpty
    }

    var monthlyProduct: Product? {
        products.first { $0.id == Self.monthlyProductID }
    }

    var yearlyProduct: Product? {
        products.first { $0.id == Self.yearlyProductID }
    }

    // MARK: - Private Properties

    private var updateListenerTask: Task<Void, Error>?

    // MARK: - Initialization

    init() {
        updateListenerTask = listenForTransactions()

        Task {
            await loadProducts()
            await updatePurchasedProducts()
        }
    }

    func cleanup() {
        updateListenerTask?.cancel()
    }

    // MARK: - Load Products

    func loadProducts() async {
        logger.info("📦 Loading products...")
        isLoading = true
        errorMessage = nil

        do {
            let productIDs = [Self.monthlyProductID, Self.yearlyProductID]
            logger.info("📦 Requesting products: \(productIDs)")

            products = try await Product.products(for: productIDs)
            products.sort { $0.price < $1.price }

            logger.info("📦 Loaded \(self.products.count) products")
            for product in products {
                logger.info("📦 Product: \(product.id) - \(product.displayName) - \(product.displayPrice)")
            }

            if products.isEmpty {
                logger.warning("⚠️ No products returned! Check App Store Connect configuration.")
                errorMessage = "No products available. Please try again later."
            }
        } catch {
            errorMessage = "Failed to load products: \(error.localizedDescription)"
            logger.error("❌ Failed to load products: \(error.localizedDescription)")
            logger.error("❌ Error details: \(String(describing: error))")
        }

        isLoading = false
    }

    // MARK: - Purchase

    func purchase(_ product: Product) async throws -> Bool {
        logger.info("🛒 Starting purchase for product: \(product.id)")
        logger.info("🛒 Product display name: \(product.displayName)")
        logger.info("🛒 Product price: \(product.displayPrice)")

        isLoading = true
        errorMessage = nil

        defer { isLoading = false }

        do {
            logger.info("🛒 Calling product.purchase()...")
            let result = try await product.purchase()
            logger.info("🛒 Purchase call completed")

            switch result {
            case .success(let verification):
                logger.info("✅ Purchase succeeded, verifying transaction...")
                switch verification {
                case .verified(let transaction):
                    logger.info("✅ Transaction verified - ID: \(transaction.id)")
                    logger.info("✅ Product ID: \(transaction.productID)")
                    await updatePurchasedProducts()
                    await transaction.finish()
                    logger.info("✅ Transaction finished successfully")
                    return true
                case .unverified(let transaction, let error):
                    logger.error("❌ Transaction unverified - ID: \(transaction.id)")
                    logger.error("❌ Verification error: \(error.localizedDescription)")
                    errorMessage = "Transaction verification failed"
                    throw StoreError.verificationFailed
                }

            case .userCancelled:
                logger.info("ℹ️ User cancelled purchase")
                return false

            case .pending:
                logger.info("⏳ Purchase pending approval (Ask to Buy or payment issue)")
                errorMessage = "Purchase is pending approval"
                return false

            @unknown default:
                logger.warning("⚠️ Unknown purchase result")
                return false
            }
        } catch StoreKitError.userCancelled {
            logger.info("ℹ️ StoreKitError: User cancelled")
            return false
        } catch StoreKitError.notAvailableInStorefront {
            logger.error("❌ Product not available in current storefront")
            errorMessage = "Product not available in your region"
            throw StoreKitError.notAvailableInStorefront
        } catch StoreKitError.networkError(let urlError) {
            logger.error("❌ Network error: \(urlError.localizedDescription)")
            errorMessage = "Network error. Please check your connection."
            throw StoreKitError.networkError(urlError)
        } catch {
            logger.error("❌ Purchase error type: \(type(of: error))")
            logger.error("❌ Purchase error: \(error.localizedDescription)")
            logger.error("❌ Full error details: \(String(describing: error))")

            // Check for specific error codes
            let nsError = error as NSError
            logger.error("❌ Error domain: \(nsError.domain)")
            logger.error("❌ Error code: \(nsError.code)")
            if let underlyingError = nsError.userInfo[NSUnderlyingErrorKey] as? Error {
                logger.error("❌ Underlying error: \(underlyingError)")
            }

            errorMessage = "Purchase failed: \(error.localizedDescription)"
            throw error
        }
    }

    // MARK: - Restore Purchases

    func restorePurchases() async {
        isLoading = true
        errorMessage = nil

        defer { isLoading = false }

        do {
            try await AppStore.sync()
            await updatePurchasedProducts()
        } catch {
            errorMessage = "Failed to restore purchases: \(error.localizedDescription)"
        }
    }

    // MARK: - Update Purchased Products

    func updatePurchasedProducts() async {
        var purchased: Set<String> = []

        for await result in Transaction.currentEntitlements {
            do {
                let transaction = try checkVerified(result)

                if transaction.revocationDate == nil {
                    purchased.insert(transaction.productID)
                }
            } catch {
                logger.warning("Transaction verification failed: \(error.localizedDescription)")
            }
        }

        purchasedProductIDs = purchased
    }

    // MARK: - Transaction Listener

    private func listenForTransactions() -> Task<Void, Error> {
        return Task.detached { [weak self] in
            let detachedLogger = Logger(subsystem: "SanTech.ZODA", category: "StoreKit")
            for await result in Transaction.updates {
                guard let self else { continue }
                do {
                    let transaction = try self.checkVerified(result)
                    await self.updatePurchasedProducts()
                    await transaction.finish()
                } catch {
                    detachedLogger.error("Transaction listener error: \(error.localizedDescription)")
                }
            }
        }
    }

    // MARK: - Verification

    private nonisolated func checkVerified<T>(_ result: VerificationResult<T>) throws -> T {
        switch result {
        case .unverified:
            throw StoreError.verificationFailed
        case .verified(let item):
            return item
        }
    }
}

// MARK: - Store Error

enum StoreError: Error, LocalizedError {
    case verificationFailed
    case purchaseFailed

    var errorDescription: String? {
        switch self {
        case .verificationFailed:
            return "Transaction verification failed"
        case .purchaseFailed:
            return "Purchase failed"
        }
    }
}
