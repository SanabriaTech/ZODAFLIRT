//
//  WelcomeView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var showOnboarding: Bool

    var body: some View {
        ZStack {
            // Background
            CosmicBackground()

            // Content
            VStack(spacing: 0) {
                Spacer()

                // Headline
                VStack(spacing: 8) {
                    Text("Know them")
                        .font(AppTheme.serifFont(size: 38))
                        .foregroundColor(AppTheme.textPrimary)

                    Text("before you")
                        .font(AppTheme.serifFont(size: 38))
                        .italic()
                        .foregroundColor(AppTheme.accent)

                    Text("meet them.")
                        .font(AppTheme.serifFont(size: 38))
                        .foregroundColor(AppTheme.textPrimary)
                }
                .multilineTextAlignment(.center)

                // Subtitle
                Text("Astrology-informed insight into\ndesire, attraction, and romance.")
                    .font(AppTheme.sansFont(size: 16))
                    .foregroundColor(AppTheme.textSecondary)
                    .multilineTextAlignment(.center)
                    .padding(.top, AppTheme.paddingLarge)

                Spacer()

                // Buttons
                VStack(spacing: AppTheme.paddingMedium) {
                    PrimaryButton(title: "Begin") {
                        showOnboarding = true
                    }

                    SecondaryButton(title: "How it works") {
                        // TODO: Show info sheet
                    }
                }
                .padding(.horizontal, AppTheme.paddingXLarge)
                .padding(.bottom, 60)
            }
        }
    }
}

#Preview {
    WelcomeView(showOnboarding: .constant(false))
}
