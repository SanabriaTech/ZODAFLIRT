//
//  OnboardingFlowView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

enum OnboardingStep {
    case yourDetails
}

struct OnboardingFlowView: View {
    @EnvironmentObject var userManager: UserManager
    @Binding var hasCompletedOnboarding: Bool
    let onDismiss: () -> Void

    @State private var currentStep: OnboardingStep = .yourDetails
    @State private var userName: String = ""
    @State private var userBirthday: Date = Calendar.current.date(byAdding: .year, value: -25, to: Date()) ?? Date()
    @State private var userGender: Gender? = nil

    var body: some View {
        Group {
            switch currentStep {
            case .yourDetails:
                YourDetailsView(
                    userName: $userName,
                    userBirthday: $userBirthday,
                    userGender: $userGender,
                    onContinue: {
                        // Save all data to UserManager
                        userManager.updateName(userName)
                        userManager.updateBirthday(userBirthday)
                        userManager.updateGender(userGender)
                        userManager.completeOnboarding()
                        hasCompletedOnboarding = true
                    },
                    onBack: {
                        onDismiss()
                    }
                )
            }
        }
    }
}

#Preview {
    OnboardingFlowView(
        hasCompletedOnboarding: .constant(false),
        onDismiss: { }
    )
    .environmentObject(UserManager())
}
