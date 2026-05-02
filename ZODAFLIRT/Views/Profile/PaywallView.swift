//
//  PaywallView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI
import StoreKit

struct PaywallView: View {
    let onDismiss: () -> Void

    @Environment(StoreKitManager.self) var storeKitManager
    @Environment(PremiumManager.self) var premiumManager
    @Environment(\.openURL) private var openURL

    @State private var selectedProduct: Product?
    @State private var isPurchasing = false
    @State private var showError = false
    @State private var errorMessage = ""

    // MARK: - Legal URLs
    private let termsURL = URL(string: "https://www.sanabriatech.com/st-terms")!
    private let privacyURL = URL(string: "https://www.sanabriatech.com/privacy")!

    // MARK: - Restore Alerts
    @State private var showRestoreSuccess = false
    @State private var showRestoreNoPurchases = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                AppTheme.backgroundGradient
                    .ignoresSafeArea()

                ScrollView(showsIndicators: false) {
                    VStack(spacing: 24) {
                        // Close Button
                        HStack {
                            Spacer()
                            Button(action: onDismiss) {
                                Image(systemName: "xmark")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(AppTheme.textSecondary)
                                    .frame(width: 36, height: 36)
                                    .background(AppTheme.cardBackground)
                                    .clipShape(Circle())
                            }
                        }
                        .padding(.horizontal, 24)
                        .padding(.top, 16)

                        // Header
                        VStack(spacing: 16) {
                            Image(systemName: "sparkles")
                                .font(.system(size: 50))
                                .foregroundColor(AppTheme.accent)

                            Text("Unlock Everything")
                                .font(AppTheme.serifFont(size: 32))
                                .foregroundColor(AppTheme.textPrimary)

                            Text("Get the complete dating guide\nfor every personality type")
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.top, 20)

                        // Features List
                        VStack(alignment: .leading, spacing: 16) {
                            FeatureRow(icon: "heart.fill", text: "Complete dating guides for all types")
                            FeatureRow(icon: "person.2.fill", text: "Physical connection insights")
                            FeatureRow(icon: "book.fill", text: "Unlimited dating playbooks")
                            FeatureRow(icon: "sparkles", text: "Deep compatibility analysis")
                            FeatureRow(icon: "star.fill", text: "New content added regularly")
                        }
                        .padding(20)
                        .background(AppTheme.cardBackground)
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(AppTheme.cardBorder, lineWidth: 1)
                        )
                        .padding(.horizontal, 24)

                        // Subscription Options
                        if storeKitManager.isLoading && storeKitManager.products.isEmpty {
                            ProgressView()
                                .tint(AppTheme.accent)
                                .padding(40)
                        } else {
                            VStack(spacing: 12) {
                                // Yearly Option (Best Value)
                                if let yearly = storeKitManager.yearlyProduct {
                                    SubscriptionOptionCard(
                                        product: yearly,
                                        isSelected: selectedProduct?.id == yearly.id,
                                        badge: "BEST VALUE",
                                        subtitle: calculateMonthlyCost(yearly)
                                    ) {
                                        selectedProduct = yearly
                                    }
                                }

                                // Monthly Option
                                if let monthly = storeKitManager.monthlyProduct {
                                    SubscriptionOptionCard(
                                        product: monthly,
                                        isSelected: selectedProduct?.id == monthly.id,
                                        badge: nil,
                                        subtitle: "Billed monthly"
                                    ) {
                                        selectedProduct = monthly
                                    }
                                }
                            }
                            .padding(.horizontal, 24)
                        }

                        // MARK: - Subscription Details (Apple Guideline 3.1.2 Compliance)
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Subscription Details")
                                .font(AppTheme.sansFontMedium(size: 14))
                                .foregroundColor(AppTheme.textPrimary)

                            VStack(alignment: .leading, spacing: 8) {
                                // Monthly plan details
                                if let monthly = storeKitManager.monthlyProduct {
                                    Text("DaterUp! Premium Monthly • \(monthly.displayPrice) per month • Renews automatically every month")
                                        .font(AppTheme.sansFont(size: 12))
                                        .foregroundColor(AppTheme.textSecondary)
                                        .fixedSize(horizontal: false, vertical: true)
                                }

                                // Yearly plan details
                                if let yearly = storeKitManager.yearlyProduct {
                                    Text("DaterUp! Premium Yearly • \(yearly.displayPrice) per year (\(calculateMonthlyCost(yearly))) • Renews automatically every year")
                                        .font(AppTheme.sansFont(size: 12))
                                        .foregroundColor(AppTheme.textSecondary)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                            }

                            // Apple required disclosure text
                            Text("Payment will be charged to your Apple ID at confirmation of purchase. Subscription automatically renews unless canceled at least 24 hours before the end of the current period. You can manage or cancel your subscription in Settings > Apple ID > Subscriptions.")
                                .font(AppTheme.sansFont(size: 11))
                                .foregroundColor(AppTheme.textMuted)
                                .fixedSize(horizontal: false, vertical: true)

                            // Legal links
                            HStack(spacing: 16) {
                                Button(action: {
                                    openURL(termsURL)
                                }) {
                                    Text("Terms of Use")
                                        .font(AppTheme.sansFont(size: 12))
                                        .foregroundColor(AppTheme.accent)
                                        .underline()
                                }

                                Button(action: {
                                    openURL(privacyURL)
                                }) {
                                    Text("Privacy Policy")
                                        .font(AppTheme.sansFont(size: 12))
                                        .foregroundColor(AppTheme.accent)
                                        .underline()
                                }
                            }
                        }
                        .padding(16)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(AppTheme.cardBackground)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(AppTheme.cardBorder, lineWidth: 1)
                        )
                        .padding(.horizontal, 24)

                        // Purchase Button
                        Button(action: {
                            Task {
                                await purchaseSelected()
                            }
                        }) {
                            HStack {
                                if isPurchasing {
                                    ProgressView()
                                        .tint(.white)
                                } else {
                                    Text("Continue")
                                        .font(AppTheme.sansFontMedium(size: 17))
                                }
                            }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 54)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(selectedProduct != nil ? AppTheme.buttonPrimaryBackground : AppTheme.buttonPrimaryBackground.opacity(0.5))
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(selectedProduct != nil ? AppTheme.buttonPrimaryBorder : AppTheme.buttonPrimaryBorder.opacity(0.5), lineWidth: 1)
                            )
                        }
                        .disabled(selectedProduct == nil || isPurchasing)
                        .padding(.horizontal, 24)

                        // Restore Purchases
                        Button(action: {
                            Task {
                                await storeKitManager.restorePurchases()
                                premiumManager.updateFromStoreKit()
                                if premiumManager.isPremium {
                                    showRestoreSuccess = true
                                } else {
                                    showRestoreNoPurchases = true
                                }
                            }
                        }) {
                            Text("Restore Purchases")
                                .font(AppTheme.sansFont(size: 14))
                                .foregroundColor(AppTheme.textSecondary)
                        }
                        .padding(.bottom, 40)
                    }
                    .frame(width: geometry.size.width)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .onAppear {
            // Pre-select yearly as default
            if selectedProduct == nil {
                selectedProduct = storeKitManager.yearlyProduct
            }
        }
        .alert("Error", isPresented: $showError) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(errorMessage)
        }
        .alert("Purchases Restored", isPresented: $showRestoreSuccess) {
            Button("OK") {
                onDismiss()
            }
        } message: {
            Text("Your purchases have been restored successfully.")
        }
        .alert("No Purchases Found", isPresented: $showRestoreNoPurchases) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("No previous purchases were found for this Apple ID.")
        }
    }

    private func purchaseSelected() async {
        guard let product = selectedProduct else { return }

        isPurchasing = true

        do {
            let success = try await storeKitManager.purchase(product)
            if success {
                premiumManager.updateFromStoreKit()
                onDismiss()
            }
        } catch {
            errorMessage = error.localizedDescription
            showError = true
        }

        isPurchasing = false
    }

    private func calculateMonthlyCost(_ yearly: Product) -> String {
        let monthlyPrice = yearly.price / 12
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = yearly.priceFormatStyle.locale
        let formatted = formatter.string(from: monthlyPrice as NSDecimalNumber) ?? ""
        return "\(formatted)/month"
    }
}

// MARK: - Feature Row

struct FeatureRow: View {
    let icon: String
    let text: String

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 16))
                .foregroundColor(AppTheme.accent)
                .frame(width: 24)

            Text(text)
                .font(AppTheme.sansFont(size: 15))
                .foregroundColor(AppTheme.textPrimary)

            Spacer()
        }
    }
}

// MARK: - Subscription Option Card

struct SubscriptionOptionCard: View {
    let product: Product
    let isSelected: Bool
    let badge: String?
    let subtitle: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    HStack(spacing: 8) {
                        Text(product.displayName)
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(AppTheme.textPrimary)

                        if let badge = badge {
                            Text(badge)
                                .font(AppTheme.sansFontMedium(size: 10))
                                .foregroundColor(AppTheme.background)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(AppTheme.accent)
                                .cornerRadius(4)
                        }
                    }

                    Text(subtitle)
                        .font(AppTheme.sansFont(size: 13))
                        .foregroundColor(AppTheme.textSecondary)
                }

                Spacer()

                Text(product.displayPrice)
                    .font(AppTheme.serifFont(size: 20))
                    .foregroundColor(AppTheme.textPrimary)
            }
            .padding(16)
            .background(AppTheme.cardBackground)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(isSelected ? AppTheme.accent : AppTheme.cardBorder, lineWidth: isSelected ? 2 : 1)
            )
        }
    }
}

#Preview {
    PaywallView(onDismiss: { })
        .environment(StoreKitManager())
        .environment(PremiumManager())
}
