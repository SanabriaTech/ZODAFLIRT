//
//  OnboardingSummaryView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct OnboardingSummaryView: View {
    let sign: ZodiacSign
    let onContinue: () -> Void
    let onBack: () -> Void

    @State private var showContent = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

                VStack(spacing: 0) {
                    // Header
                    VStack(spacing: 12) {
                        HStack {
                            Button(action: onBack) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(AppTheme.textPrimary)
                                    .frame(width: 44, height: 44)
                            }
                            Spacer()
                        }
                        .padding(.horizontal, 16)

                        OnboardingProgressBar(progress: OnboardingStep.summary.progress)
                            .padding(.horizontal, 24)
                    }
                    .padding(.top, 8)

                    // Scrollable Content
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 24) {
                            // Header
                            VStack(spacing: 16) {
                                Image(sign.iconName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)

                                Text("You're ready, \(sign.name)")
                                    .font(AppTheme.serifFont(size: 28))
                                    .foregroundColor(AppTheme.textPrimary)
                            }
                            .padding(.top, 24)
                            .opacity(showContent ? 1 : 0)

                            // Traits Card
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Your Romantic Traits")
                                    .font(AppTheme.serifFont(size: 20))
                                    .foregroundColor(AppTheme.textPrimary)

                                // All 5 traits
                                VStack(alignment: .leading, spacing: 10) {
                                    ForEach(ZodiacPersonality.getTraits(for: sign), id: \.self) { trait in
                                        HStack(spacing: 12) {
                                            Image(systemName: "sparkle")
                                                .font(.system(size: 12))
                                                .foregroundColor(AppTheme.accent)

                                            Text(trait)
                                                .font(AppTheme.sansFont(size: 16))
                                                .foregroundColor(AppTheme.textPrimary)
                                        }
                                    }
                                }
                            }
                            .padding(20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(AppTheme.cardBackground)
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(AppTheme.cardBorder, lineWidth: 1)
                            )
                            .padding(.horizontal, 24)
                            .opacity(showContent ? 1 : 0)

                            // Compatibility Teaser Card
                            VStack(alignment: .leading, spacing: 12) {
                                HStack {
                                    Text("Compatibility Insight")
                                        .font(AppTheme.serifFont(size: 20))
                                        .foregroundColor(AppTheme.textPrimary)

                                    Spacer()

                                    Image(systemName: "sparkles")
                                        .font(.system(size: 16))
                                        .foregroundColor(AppTheme.accent)
                                }

                                Text(ZodiacCompatibility.getCompatibilityTeaser(for: sign))
                                    .font(AppTheme.sansFont(size: 15))
                                    .foregroundColor(AppTheme.textSecondary)
                                    .lineSpacing(4)
                                    .fixedSize(horizontal: false, vertical: true)

                                // Best matches preview
                                HStack(spacing: 12) {
                                    ForEach(Array(ZodiacCompatibility.getBestMatches(for: sign).prefix(3))) { match in
                                        VStack(spacing: 6) {
                                            Image(match.sign.iconName)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 36, height: 36)

                                            Text(match.sign.name)
                                                .font(AppTheme.sansFont(size: 11))
                                                .foregroundColor(AppTheme.textSecondary)
                                        }
                                    }
                                }
                                .padding(.top, 8)
                            }
                            .padding(20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(AppTheme.cardBackground)
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(AppTheme.accent.opacity(0.5), lineWidth: 1)
                            )
                            .padding(.horizontal, 24)
                            .opacity(showContent ? 1 : 0)

                            // Premium hint
                            Text("Unlock Premium for deeper compatibility insights")
                                .font(AppTheme.sansFont(size: 13))
                                .foregroundColor(AppTheme.textMuted)
                                .opacity(showContent ? 1 : 0)

                            Spacer().frame(height: 100)
                        }
                        .frame(width: geometry.size.width)
                    }

                    // Continue Button
                    Button(action: onContinue) {
                        Text("Start Exploring")
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(AppTheme.accent)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                    .opacity(showContent ? 1 : 0)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.6).delay(0.2)) {
                showContent = true
            }
        }
    }
}

#Preview {
    OnboardingSummaryView(
        sign: .gemini,
        onContinue: { },
        onBack: { }
    )
}
