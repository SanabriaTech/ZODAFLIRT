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
        isLoading = true
        errorMessage = nil

        do {
            let productIDs = [Self.monthlyProductID, Self.yearlyProductID]
            products = try await Product.products(for: productIDs)
            products.sort { $0.price < $1.price }
        } catch {
            errorMessage = "Failed to load products: \(error.localizedDescription)"
            logger.error("Failed to load products: \(error.localizedDescription)")
        }

        isLoading = false
    }

    // MARK: - Purchase

    func purchase(_ product: Product) async throws -> Bool {
        isLoading = true
        errorMessage = nil

        defer { isLoading = false }

        do {
            let result = try await product.purchase()

            switch result {
            case .success(let verification):
                let transaction = try checkVerified(verification)
                await updatePurchasedProducts()
                await transaction.finish()
                return true

            case .userCancelled:
                return false

            case .pending:
                errorMessage = "Purchase is pending approval"
                return false

            @unknown default:
                return false
            }
        } catch {
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
