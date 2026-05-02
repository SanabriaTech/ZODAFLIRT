//
//  AstrologyExperienceView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct AstrologyExperienceView: View {
    @Binding var selectedExperience: AstrologyExperience?
    let onContinue: () -> Void
    let onBack: () -> Void

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                AppTheme.backgroundGradient
                    .ignoresSafeArea()

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

                        OnboardingProgressBar(progress: OnboardingStep.experience.progress)
                            .padding(.horizontal, 24)
                    }
                    .padding(.top, 8)

                    Spacer()

                    // Content
                    VStack(spacing: 32) {
                        VStack(spacing: 12) {
                            Text("How familiar are you with personality types?")
                                .font(AppTheme.serifFont(size: 32))
                                .foregroundColor(AppTheme.textPrimary)
                                .multilineTextAlignment(.center)

                            Text("This helps us tailor your experience")
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                        }
                        .padding(.horizontal, 24)

                        // Options
                        VStack(spacing: 12) {
                            ForEach(AstrologyExperience.allCases) { experience in
                                ExperienceOptionButton(
                                    experience: experience,
                                    isSelected: selectedExperience == experience
                                ) {
                                    selectedExperience = experience
                                }
                            }
                        }
                        .padding(.horizontal, 24)
                    }

                    Spacer()

                    // Continue Button
                    Button(action: onContinue) {
                        Text("Continue")
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(selectedExperience != nil ? .white : AppTheme.textMuted)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(AppTheme.buttonPrimaryBackground)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(selectedExperience != nil ? AppTheme.buttonPrimaryBorder : AppTheme.cardBorder, lineWidth: 1)
                            )
                    }
                    .disabled(selectedExperience == nil)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

struct ExperienceOptionButton: View {
    let experience: AstrologyExperience
    let isSelected: Bool
    let action: () -> Void

    var icon: String {
        switch experience {
        case .curious: return "sparkle"
        case .basics: return "star"
        case .expert: return "star.fill"
        }
    }

    var body: some View {
        Button(action: action) {
            HStack(spacing: 16) {
                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundColor(isSelected ? AppTheme.accent : AppTheme.textSecondary)
                    .frame(width: 32)

                Text(experience.rawValue)
                    .font(AppTheme.sansFont(size: 17))
                    .foregroundColor(AppTheme.textPrimary)

                Spacer()

                if isSelected {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 22))
                        .foregroundColor(AppTheme.accent)
                } else {
                    Circle()
                        .stroke(AppTheme.cardBorder, lineWidth: 1.5)
                        .frame(width: 22, height: 22)
                }
            }
            .padding(16)
            .background(AppTheme.cardBackground)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(isSelected ? AppTheme.accent : AppTheme.cardBorder, lineWidth: 1)
            )
        }
    }
}

#Preview {
    AstrologyExperienceView(
        selectedExperience: .constant(.basics),
        onContinue: { },
        onBack: { }
    )
}
