//
//  MainAppView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct MainAppView: View {
    @Environment(UserManager.self) var userManager
    @State private var hasCompletedOnboarding = false
    @State private var showOnboarding = false

    var body: some View {
        Group {
            if hasCompletedOnboarding || userManager.userProfile.hasCompletedOnboarding {
                HomeView()
            } else if showOnboarding {
                OnboardingFlowView(
                    hasCompletedOnboarding: $hasCompletedOnboarding,
                    onDismiss: {
                        showOnboarding = false
                    }
                )
                .environment(userManager)
            } else {
                WelcomeView(showOnboarding: $showOnboarding)
            }
        }
        .animation(.easeInOut(duration: 0.3), value: showOnboarding)
        .animation(.easeInOut(duration: 0.3), value: hasCompletedOnboarding)
        .onAppear {
            // Check if user has already completed onboarding
            if userManager.userProfile.hasCompletedOnboarding {
                hasCompletedOnboarding = true
            }
        }
    }
}

#Preview {
    MainAppView()
        .environment(PremiumManager())
        .environment(UserManager())
}
