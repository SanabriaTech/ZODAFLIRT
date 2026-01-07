//
//  OnboardingFlowView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct OnboardingFlowView: View {
    @EnvironmentObject var userManager: UserManager
    @Binding var hasCompletedOnboarding: Bool
    let onDismiss: () -> Void

    @State private var currentStep: OnboardingStep = .birthday
    @State private var userBirthday: Date = Calendar.current.date(byAdding: .year, value: -25, to: Date()) ?? Date()
    @State private var selectedExperience: AstrologyExperience? = nil
    @State private var selectedIntents: Set<DatingIntent> = []

    private var userSign: ZodiacSign {
        ZodiacSign.from(date: userBirthday)
    }

    var body: some View {
        Group {
            switch currentStep {
            case .birthday:
                BirthdayEntryView(
                    birthday: $userBirthday,
                    onContinue: {
                        userManager.updateBirthday(userBirthday)
                        goToStep(.zodiacReveal)
                    },
                    onBack: {
                        onDismiss()
                    }
                )

            case .zodiacReveal:
                ZodiacRevealView(
                    sign: userSign,
                    onContinue: {
                        goToStep(.profilePhoto)
                    },
                    onBack: {
                        goToStep(.birthday)
                    }
                )

            case .profilePhoto:
                ProfilePhotoView(
                    sign: userSign,
                    onContinue: {
                        goToStep(.experience)
                    },
                    onBack: {
                        goToStep(.zodiacReveal)
                    }
                )
                .environmentObject(userManager)

            case .experience:
                AstrologyExperienceView(
                    selectedExperience: $selectedExperience,
                    onContinue: {
                        if let experience = selectedExperience {
                            userManager.updateAstrologyExperience(experience)
                        }
                        goToStep(.datingIntent)
                    },
                    onBack: {
                        goToStep(.profilePhoto)
                    }
                )

            case .datingIntent:
                DatingIntentView(
                    selectedIntents: $selectedIntents,
                    onContinue: {
                        userManager.updateDatingIntents(Array(selectedIntents))
                        goToStep(.summary)
                    },
                    onBack: {
                        goToStep(.experience)
                    }
                )

            case .summary:
                OnboardingSummaryView(
                    sign: userSign,
                    onContinue: {
                        userManager.completeOnboarding()
                        hasCompletedOnboarding = true
                    },
                    onBack: {
                        goToStep(.datingIntent)
                    }
                )
            }
        }
        .animation(.easeInOut(duration: 0.3), value: currentStep)
    }

    private func goToStep(_ step: OnboardingStep) {
        currentStep = step
    }
}

#Preview {
    OnboardingFlowView(
        hasCompletedOnboarding: .constant(false),
        onDismiss: { }
    )
    .environmentObject(UserManager())
}
