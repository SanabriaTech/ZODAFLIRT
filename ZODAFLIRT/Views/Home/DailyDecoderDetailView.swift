//
//  DailyDecoderDetailView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 5/1/26.
//
//  Detail screen for the Daily Decoder. Shows today's featured sign with the
//  full tip body and a CTA that pushes the sign's full ZodiacProfileView.

import SwiftUI

struct DailyDecoderDetailView: View {
    let tip: DailyEdgeTip

    @Environment(UserManager.self) var userManager
    @Environment(PremiumManager.self) var premiumManager
    @Environment(StoreKitManager.self) var storeKitManager
    @Environment(\.dismiss) var dismiss

    @State private var navigateToSignProfile = false

    var body: some View {
        ZStack {
            AppTheme.backgroundGradient
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    // Header — TODAY'S DECODED SIGN badge + sign symbol + name
                    VStack(spacing: 20) {
                        Text("TODAY'S DECODED SIGN")
                            .font(AppTheme.sansFontMedium(size: 11))
                            .foregroundColor(AppTheme.teal)
                            .tracking(1.5)
                            .padding(.top, 32)

                        ZStack {
                            Circle()
                                .fill(AppTheme.teal.opacity(0.10))
                                .frame(width: 160, height: 160)

                            Image(tip.sign.iconName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 110, height: 110)
                        }

                        Text(tip.sign.name)
                            .font(AppTheme.serifFont(size: 36))
                            .foregroundColor(AppTheme.textPrimary)
                    }
                    .frame(maxWidth: .infinity)

                    // Tip card
                    VStack(alignment: .leading, spacing: 16) {
                        Text("TIP")
                            .font(AppTheme.sansFontMedium(size: 10))
                            .foregroundColor(AppTheme.teal)
                            .tracking(1.0)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(AppTheme.teal, lineWidth: 1)
                            )

                        Text(tip.headline)
                            .font(AppTheme.serifFont(size: 28))
                            .foregroundColor(AppTheme.textPrimary)
                            .lineSpacing(4)
                            .fixedSize(horizontal: false, vertical: true)

                        Text(tip.body)
                            .font(AppTheme.sansFont(size: 16))
                            .foregroundColor(AppTheme.textSecondary)
                            .lineSpacing(6)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(24)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(AppTheme.cardBackground)
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(AppTheme.cardBorder, lineWidth: 1)
                    )
                    .shadow(color: AppTheme.cardShadow, radius: 6, x: 0, y: 2)
                    .padding(.horizontal, 24)

                    Spacer().frame(height: 16)

                    // CTA
                    Button(action: {
                        navigateToSignProfile = true
                    }) {
                        HStack(spacing: 8) {
                            Text("Decode \(tip.sign.name) in full")
                                .font(AppTheme.sansFontSemibold(size: 16))

                            Image(systemName: "arrow.right")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(AppTheme.teal)
                        .cornerRadius(28)
                    }
                    .padding(.horizontal, 24)

                    Spacer().frame(height: 32)
                }
            }
        }
        .navigationDestination(isPresented: $navigateToSignProfile) {
            ZodiacProfileView(
                profile: SampleData.getProfile(for: tip.sign),
                datingContext: nil,
                onBack: { navigateToSignProfile = false },
                onSave: {
                    userManager.toggleSavedSign(tip.sign)
                    navigateToSignProfile = false
                }
            )
        }
    }
}

#Preview {
    NavigationStack {
        DailyDecoderDetailView(tip: DailyEdgeData.tips[.cancer]!)
            .environment(UserManager())
            .environment(PremiumManager())
            .environment(StoreKitManager())
    }
}
