//
//  GuidanceTargetView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//

import SwiftUI

struct GuidanceTargetView: View {
    let userGender: UserGender?
    @Binding var selectedTarget: GuidanceTarget?
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

                        OnboardingProgressBar(progress: OnboardingStep.guidanceTarget.progress)
                            .padding(.horizontal, 24)
                    }
                    .padding(.top, 8)

                    Spacer()

                    // Header
                    VStack(spacing: 12) {
                        Text("Who would you like\nguidance on?")
                            .font(AppTheme.serifFont(size: 32))
                            .foregroundColor(AppTheme.textPrimary)
                            .multilineTextAlignment(.center)

                        Text("We'll tailor advice for your dating style.")
                            .font(AppTheme.sansFont(size: 16))
                            .foregroundColor(AppTheme.textSecondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 24)
                    }

                    Spacer().frame(height: 40)

                    // Target Options
                    VStack(spacing: 12) {
                        ForEach(GuidanceTarget.allCases) { target in
                            GuidanceTargetCard(
                                target: target,
                                isSelected: selectedTarget == target,
                                action: {
                                    selectedTarget = target
                                }
                            )
                        }
                    }
                    .padding(.horizontal, 24)

                    // Helper text
                    Text("You can change this anytime in your profile.")
                        .font(AppTheme.sansFont(size: 13))
                        .foregroundColor(AppTheme.textMuted)
                        .padding(.top, 16)

                    Spacer()

                    // Continue Button
                    Button(action: onContinue) {
                        Text("Continue")
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(selectedTarget != nil ? .white : AppTheme.textMuted)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(AppTheme.buttonPrimaryBackground)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(selectedTarget != nil ? AppTheme.buttonPrimaryBorder : AppTheme.cardBorder, lineWidth: 1)
                            )
                    }
                    .disabled(selectedTarget == nil)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .onAppear {
            // Pre-select default for binary genders
            if selectedTarget == nil, let gender = userGender {
                switch gender {
                case .man: selectedTarget = .women
                case .woman: selectedTarget = .men
                case .nonBinary: break
                }
            }
        }
    }
}

// MARK: - Guidance Target Card

struct GuidanceTargetCard: View {
    let target: GuidanceTarget
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 16) {
                ZStack {
                    Circle()
                        .fill(isSelected ? AppTheme.accent.opacity(0.20) : AppTheme.accent.opacity(0.10))
                        .frame(width: 50, height: 50)

                    Image(systemName: "person.2.fill")
                        .font(.system(size: 20))
                        .foregroundColor(AppTheme.accent)
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text(target.displayName)
                        .font(AppTheme.sansFontMedium(size: 18))
                        .foregroundColor(AppTheme.textPrimary)

                    Text(target.description)
                        .font(AppTheme.sansFont(size: 14))
                        .foregroundColor(AppTheme.textSecondary)
                        .lineLimit(2)
                }

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
    GuidanceTargetView(
        userGender: .man,
        selectedTarget: .constant(.women),
        onContinue: { },
        onBack: { }
    )
}
