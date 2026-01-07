//
//  PaywallView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct PaywallView: View {
    let onDismiss: () -> Void
    @EnvironmentObject var premiumManager: PremiumManager

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

                VStack(spacing: 24) {
                    // Header
                    HStack {
                        Spacer()
                        Button(action: onDismiss) {
                            Image(systemName: "xmark")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(AppTheme.textSecondary)
                                .frame(width: 44, height: 44)
                        }
                    }
                    .padding(.horizontal, 16)

                    Spacer()

                    // Content
                    VStack(spacing: 16) {
                        Image(systemName: "star.fill")
                            .font(.system(size: 48))
                            .foregroundColor(AppTheme.accent)

                        Text("Unlock Premium")
                            .font(AppTheme.serifFont(size: 32))
                            .foregroundColor(AppTheme.textPrimary)

                        Text("Get full access to all seduction scenarios, physical chemistry insights, and more.")
                            .font(AppTheme.sansFont(size: 16))
                            .foregroundColor(AppTheme.textSecondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 32)
                    }

                    Spacer()

                    // Buttons
                    VStack(spacing: 16) {
                        Button(action: {
                            premiumManager.purchasePremium()
                            onDismiss()
                        }) {
                            Text("Subscribe Now")
                                .font(AppTheme.sansFontMedium(size: 17))
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .frame(height: 52)
                                .background(AppTheme.accent)
                                .cornerRadius(12)
                        }

                        Button(action: onDismiss) {
                            Text("Maybe Later")
                                .font(AppTheme.sansFont(size: 15))
                                .foregroundColor(AppTheme.textSecondary)
                        }
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

#Preview {
    PaywallView(onDismiss: { })
        .environmentObject(PremiumManager())
}
