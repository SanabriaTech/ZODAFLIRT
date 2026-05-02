//
//  BirthdayEntryView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct BirthdayEntryView: View {
    @Binding var birthday: Date
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

                        OnboardingProgressBar(progress: OnboardingStep.birthday.progress)
                            .padding(.horizontal, 24)
                    }
                    .padding(.top, 8)

                    Spacer()

                    // Content
                    VStack(spacing: 24) {
                        VStack(spacing: 12) {
                            Text("When were you born?")
                                .font(AppTheme.serifFont(size: 32))
                                .foregroundColor(AppTheme.textPrimary)
                                .multilineTextAlignment(.center)

                            Text("Your birthday helps us understand your personality style.")
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                                .multilineTextAlignment(.center)

                            Text("We use personality traits to tailor dating advice and communication tips.")
                                .font(AppTheme.sansFont(size: 14))
                                .foregroundColor(AppTheme.textMuted)
                                .multilineTextAlignment(.center)
                                .padding(.top, 4)
                        }
                        .padding(.horizontal, 24)

                        // Date Picker
                        DatePicker(
                            "",
                            selection: $birthday,
                            displayedComponents: .date
                        )
                        .datePickerStyle(.wheel)
                        .labelsHidden()
                        .environment(\.colorScheme, .light)
                        .frame(maxWidth: .infinity)
                        .background(AppTheme.cardBackground)
                        .cornerRadius(16)
                        .padding(.horizontal, 24)
                    }

                    Spacer()

                    // Continue Button
                    Button(action: onContinue) {
                        Text("Reveal My Sign")
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(AppTheme.buttonPrimaryBackground)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(AppTheme.buttonPrimaryBorder, lineWidth: 1)
                            )
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

#Preview {
    BirthdayEntryView(
        birthday: .constant(Date()),
        onContinue: { },
        onBack: { }
    )
}
