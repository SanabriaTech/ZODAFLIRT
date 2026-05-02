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

    var body: some View {
        Group {
            if hasCompletedOnboarding || userManager.userProfile.hasCompletedOnboarding {
                HomeScreenView()
            } else if userManager.hasSeenWelcomeScreen() {
                OnboardingFlowView(
                    hasCompletedOnboarding: $hasCompletedOnboarding,
                    onDismiss: { }
                )
            } else {
                WelcomeScreenView()
            }
        }
        .animation(.easeInOut(duration: 0.3), value: hasCompletedOnboarding)
        .animation(.easeInOut(duration: 0.3), value: userManager.userProfile.hasSeenWelcome)
        .onAppear {
            if userManager.userProfile.hasCompletedOnboarding {
                hasCompletedOnboarding = true
            }
        }
    }
}

#Preview {
    MainAppView()
        .environment(StoreKitManager())
        .environment(PremiumManager())
        .environment(UserManager())
}
