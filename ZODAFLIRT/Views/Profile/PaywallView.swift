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

    @State private var selectedProduct: Product?
    @State private var isPurchasing = false
    @State private var showError = false
    @State private var errorMessage = ""

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

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

                            Text("Get the complete seduction playbook\nfor every zodiac sign")
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.top, 20)

                        // Features List
                        VStack(alignment: .leading, spacing: 16) {
                            FeatureRow(icon: "flame.fill", text: "Full seduction scenarios for all signs")
                            FeatureRow(icon: "heart.fill", text: "Physical chemistry insights")
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

                        // Purchase Button
                        Button(action: {
                            Task {
                                await purchaseSelected()
                            }
                        }) {
                            HStack {
                                if isPurchasing {
                                    ProgressView()
                                        .tint(.black)
                                } else {
                                    Text("Continue")
                                        .font(AppTheme.sansFontMedium(size: 17))
                                }
                            }
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .frame(height: 54)
                            .background(selectedProduct != nil ? AppTheme.accent : AppTheme.accent.opacity(0.5))
                            .cornerRadius(12)
                        }
                        .disabled(selectedProduct == nil || isPurchasing)
                        .padding(.horizontal, 24)

                        // Restore & Terms
                        VStack(spacing: 12) {
                            Button(action: {
                                Task {
                                    await storeKitManager.restorePurchases()
                                    premiumManager.updateFromStoreKit()
                                    if premiumManager.isPremium {
                                        onDismiss()
                                    }
                                }
                            }) {
                                Text("Restore Purchases")
                                    .font(AppTheme.sansFont(size: 14))
                                    .foregroundColor(AppTheme.textSecondary)
                            }

                            Text("Cancel anytime. Subscription auto-renews until cancelled.")
                                .font(AppTheme.sansFont(size: 12))
                                .foregroundColor(AppTheme.textMuted)
                                .multilineTextAlignment(.center)

                            HStack(spacing: 16) {
                                Button("Terms of Use") {
                                    // Open terms URL
                                }
                                .font(AppTheme.sansFont(size: 12))
                                .foregroundColor(AppTheme.textMuted)

                                Button("Privacy Policy") {
                                    // Open privacy URL
                                }
                                .font(AppTheme.sansFont(size: 12))
                                .foregroundColor(AppTheme.textMuted)
                            }
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
                                .foregroundColor(.black)
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
