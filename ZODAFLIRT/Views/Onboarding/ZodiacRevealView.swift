//
//  ZodiacRevealView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct ZodiacRevealView: View {
    let sign: ZodiacSign
    let onContinue: () -> Void
    let onBack: () -> Void

    @State private var showIcon = false
    @State private var showName = false
    @State private var showTraits = false
    @State private var iconScale: CGFloat = 0.3
    @State private var iconOpacity: Double = 0
    @State private var glowOpacity: Double = 0

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

                VStack(spacing: 0) {
                    // Header with back button and progress
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

                        OnboardingProgressBar(progress: OnboardingStep.zodiacReveal.progress)
                            .padding(.horizontal, 24)
                    }
                    .padding(.top, 8)

                    Spacer()

                    // Reveal Content
                    VStack(spacing: 32) {
                        // Zodiac Icon with glow
                        ZStack {
                            // Glow effect
                            Circle()
                                .fill(AppTheme.accent.opacity(0.3))
                                .frame(width: 220, height: 220)
                                .blur(radius: 40)
                                .opacity(glowOpacity)

                            Image(sign.iconName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 180)
                                .scaleEffect(iconScale)
                                .opacity(iconOpacity)
                        }

                        // Sign Name and Date Range
                        VStack(spacing: 8) {
                            Text("You are a")
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                                .opacity(showName ? 1 : 0)

                            Text(sign.name)
                                .font(AppTheme.serifFont(size: 42))
                                .foregroundColor(AppTheme.textPrimary)
                                .opacity(showName ? 1 : 0)

                            Text(sign.dateRange)
                                .font(AppTheme.sansFont(size: 15))
                                .foregroundColor(AppTheme.textSecondary)
                                .opacity(showName ? 1 : 0)
                        }

                        // Traits
                        HStack(spacing: 10) {
                            ForEach(ZodiacPersonality.getTraits(for: sign).prefix(3), id: \.self) { trait in
                                Text(trait)
                                    .font(AppTheme.sansFont(size: 14))
                                    .foregroundColor(AppTheme.accent)
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .background(AppTheme.accent.opacity(0.15))
                                    .cornerRadius(20)
                            }
                        }
                        .opacity(showTraits ? 1 : 0)
                    }

                    Spacer()

                    // Continue Button
                    Button(action: onContinue) {
                        Text("Continue")
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(AppTheme.textPrimary)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(AppTheme.cardBackground)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(AppTheme.accent, lineWidth: 1)
                            )
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                    .opacity(showTraits ? 1 : 0)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .onAppear {
            startRevealAnimation()
        }
    }

    private func startRevealAnimation() {
        // Phase 1: Icon fades in and scales up with glow
        withAnimation(.easeOut(duration: 0.8)) {
            iconOpacity = 1
            iconScale = 1.0
            glowOpacity = 1
        }

        // Phase 2: Glow pulses down
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            withAnimation(.easeInOut(duration: 0.6)) {
                glowOpacity = 0.5
            }
        }

        // Phase 3: Name appears
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            withAnimation(.easeOut(duration: 0.5)) {
                showName = true
            }
        }

        // Phase 4: Traits appear
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(.easeOut(duration: 0.5)) {
                showTraits = true
            }
        }
    }
}

#Preview {
    ZodiacRevealView(
        sign: .gemini,
        onContinue: { },
        onBack: { }
    )
}
