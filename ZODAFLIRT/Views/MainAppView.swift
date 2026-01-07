//
//  MainAppView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct MainAppView: View {
    @EnvironmentObject var userManager: UserManager
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
                .environmentObject(userManager)
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
        .environmentObject(PremiumManager())
        .environmentObject(UserManager())
}
