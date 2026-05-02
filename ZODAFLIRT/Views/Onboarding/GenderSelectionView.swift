//
//  GenderSelectionView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//

import SwiftUI

struct GenderSelectionView: View {
    @Binding var selectedGender: UserGender?
    let onContinue: () -> Void
    let onBack: () -> Void

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                AppTheme.backgroundGradient
                    .ignoresSafeArea()

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

                        OnboardingProgressBar(progress: OnboardingStep.gender.progress)
                            .padding(.horizontal, 24)
                    }
                    .padding(.top, 8)

                    Spacer()

                    // Header
                    VStack(spacing: 12) {
                        Text("How do you identify?")
                            .font(AppTheme.serifFont(size: 32))
                            .foregroundColor(AppTheme.textPrimary)
                            .multilineTextAlignment(.center)

                        Text("This helps us personalize your dating guidance.")
                            .font(AppTheme.sansFont(size: 16))
                            .foregroundColor(AppTheme.textSecondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 24)
                    }

                    Spacer().frame(height: 40)

                    // Gender Options
                    VStack(spacing: 12) {
                        ForEach(UserGender.allCases) { gender in
                            GenderOptionCard(
                                gender: gender,
                                isSelected: selectedGender == gender,
                                action: {
                                    selectedGender = gender
                                }
                            )
                        }
                    }
                    .padding(.horizontal, 24)

                    Spacer()

                    // Continue Button
                    Button(action: onContinue) {
                        Text("Continue")
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(selectedGender != nil ? .white : AppTheme.textMuted)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(AppTheme.buttonPrimaryBackground)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(selectedGender != nil ? AppTheme.buttonPrimaryBorder : AppTheme.cardBorder, lineWidth: 1)
                            )
                    }
                    .disabled(selectedGender == nil)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

// MARK: - Gender Option Card

struct GenderOptionCard: View {
    let gender: UserGender
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 16) {
                ZStack {
                    Circle()
                        .fill(isSelected ? AppTheme.accent.opacity(0.20) : AppTheme.accent.opacity(0.10))
                        .frame(width: 50, height: 50)

                    Image(systemName: gender.icon)
                        .font(.system(size: 22))
                        .foregroundColor(AppTheme.accent)
                }

                Text(gender.displayName)
                    .font(AppTheme.sansFontMedium(size: 18))
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
    GenderSelectionView(
        selectedGender: .constant(.man),
        onContinue: { },
        onBack: { }
    )
}
