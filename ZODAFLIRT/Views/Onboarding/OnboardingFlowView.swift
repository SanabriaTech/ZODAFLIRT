//
//  OnboardingFlowView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct OnboardingFlowView: View {
    @Environment(UserManager.self) var userManager
    @Binding var hasCompletedOnboarding: Bool
    let onDismiss: () -> Void

    @State private var currentStep: OnboardingStep = .birthday
    @State private var userBirthday: Date = Calendar.current.date(byAdding: .year, value: -25, to: Date()) ?? Date()
    @State private var selectedExperience: AstrologyExperience? = nil
    @State private var selectedIntents: Set<DatingIntent> = []
    @State private var selectedGender: UserGender? = nil
    @State private var selectedGuidanceTarget: GuidanceTarget? = nil

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
                        goToStep(.gender)
                    },
                    onBack: {
                        goToStep(.birthday)
                    }
                )

            case .gender:
                GenderSelectionView(
                    selectedGender: $selectedGender,
                    onContinue: {
                        if let gender = selectedGender {
                            userManager.setUserGender(gender)
                            // Sync the default target into local state so the next screen pre-selects
                            if selectedGuidanceTarget == nil {
                                selectedGuidanceTarget = userManager.getGuidanceTarget()
                            }
                        }
                        goToStep(.guidanceTarget)
                    },
                    onBack: {
                        goToStep(.zodiacReveal)
                    }
                )

            case .guidanceTarget:
                GuidanceTargetView(
                    userGender: selectedGender,
                    selectedTarget: $selectedGuidanceTarget,
                    onContinue: {
                        if let target = selectedGuidanceTarget {
                            userManager.setGuidanceTarget(target)
                        }
                        goToStep(.profilePhoto)
                    },
                    onBack: {
                        goToStep(.gender)
                    }
                )

            case .profilePhoto:
                ProfilePhotoView(
                    sign: userSign,
                    onContinue: {
                        goToStep(.experience)
                    },
                    onBack: {
                        goToStep(.guidanceTarget)
                    }
                )
                .environment(userManager)

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
    .environment(UserManager())
}
