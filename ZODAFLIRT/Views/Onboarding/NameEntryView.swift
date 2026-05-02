//
//  NameEntryView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 5/1/26.
//
//  First onboarding step. Collects the user's first name, persisted via the
//  parent OnboardingFlowView's onContinue callback. Routing is state-machine
//  based to match the existing onboarding pattern (see BirthdayEntryView).

import SwiftUI

struct NameEntryView: View {
    @Binding var name: String
    let onContinue: () -> Void
    let onBack: () -> Void

    @FocusState private var isNameFieldFocused: Bool

    private var trimmedName: String {
        name.trimmingCharacters(in: .whitespaces)
    }

    private var isValidName: Bool {
        !trimmedName.isEmpty && trimmedName.count <= 30
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                AppTheme.backgroundGradient
                    .ignoresSafeArea()

                VStack(spacing: 0) {
                    // Header with back button + progress bar
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

                        OnboardingProgressBar(progress: OnboardingStep.nameEntry.progress)
                            .padding(.horizontal, 24)
                    }
                    .padding(.top, 8)

                    Spacer()

                    // Headline
                    VStack(spacing: 12) {
                        Text("What should we call you?")
                            .font(AppTheme.serifFont(size: 32))
                            .foregroundColor(AppTheme.textPrimary)
                            .multilineTextAlignment(.center)

                        Text("Your first name helps us personalize\nyour dating advice.")
                            .font(AppTheme.sansFont(size: 16))
                            .foregroundColor(AppTheme.textSecondary)
                            .multilineTextAlignment(.center)
                            .lineSpacing(4)
                    }
                    .padding(.horizontal, 32)

                    Spacer().frame(height: 40)

                    // Name input card
                    TextField("Your first name", text: $name)
                        .font(AppTheme.serifFont(size: 22))
                        .foregroundColor(AppTheme.textPrimary)
                        .multilineTextAlignment(.center)
                        .textContentType(.givenName)
                        .autocorrectionDisabled()
                        .submitLabel(.next)
                        .onSubmit {
                            if isValidName { onContinue() }
                        }
                        .focused($isNameFieldFocused)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                        .background(AppTheme.cardBackground)
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(AppTheme.cardBorder, lineWidth: 1)
                        )
                        .shadow(color: AppTheme.cardShadow, radius: 6, x: 0, y: 2)
                        .padding(.horizontal, 24)

                    Spacer()

                    // Continue button
                    Button(action: {
                        if isValidName { onContinue() }
                    }) {
                        Text("Continue")
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(isValidName ? AppTheme.teal : AppTheme.teal.opacity(0.4))
                            .cornerRadius(12)
                    }
                    .disabled(!isValidName)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                isNameFieldFocused = true
            }
        }
    }
}

#Preview {
    NameEntryView(
        name: .constant(""),
        onContinue: { },
        onBack: { }
    )
}
