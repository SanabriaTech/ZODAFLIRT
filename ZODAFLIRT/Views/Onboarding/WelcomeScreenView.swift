//
//  WelcomeScreenView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 5/1/26.
//
//  First-time user welcome screen. Hero image + tagline + "Get My Edge" CTA.
//  Routing to onboarding is controlled by the parent (MainAppView) via the
//  hasSeenWelcome flag — calling userManager.markWelcomeSeen() causes the
//  parent to swap in OnboardingFlowView on next render.

import SwiftUI

struct WelcomeScreenView: View {
    @Environment(UserManager.self) var userManager

    var body: some View {
        ZStack {
            // Hero background image
            Image("WelcomeHero")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()

            // Dark gradient overlay for text legibility
            LinearGradient(
                colors: [
                    Color.black.opacity(0.4),
                    Color.black.opacity(0.1),
                    Color.black.opacity(0.0),
                    Color.black.opacity(0.5)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer().frame(height: 80)

                // Tagline section
                VStack(spacing: 16) {
                    Text("The cheat code\nfor connection.")
                        .font(AppTheme.serifFont(size: 42))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .lineSpacing(2)

                    Text("Know exactly what to say.\nWalk in with the advantage.")
                        .font(AppTheme.sansFont(size: 16))
                        .foregroundColor(.white.opacity(0.85))
                        .multilineTextAlignment(.center)
                        .lineSpacing(4)
                }
                .padding(.horizontal, 32)

                Spacer()

                // CTA section
                VStack(spacing: 16) {
                    Button(action: {
                        userManager.markWelcomeSeen()
                    }) {
                        Text("Get My Edge")
                            .font(AppTheme.sansFontSemibold(size: 17))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 56)
                            .background(AppTheme.teal)
                            .cornerRadius(28)
                    }
                    .padding(.horizontal, 24)

                    // Sign in link (placeholder for future)
                    HStack(spacing: 4) {
                        Text("Already have an account?")
                            .font(AppTheme.sansFont(size: 14))
                            .foregroundColor(.white.opacity(0.7))

                        Button(action: {
                            // Future: navigate to sign in. For now, treat as same path.
                            userManager.markWelcomeSeen()
                        }) {
                            Text("Sign In")
                                .font(AppTheme.sansFontMedium(size: 14))
                                .foregroundColor(.white)
                                .underline()
                        }
                    }
                }
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    WelcomeScreenView()
        .environment(UserManager())
}
