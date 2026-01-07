//
//  DatingIntentView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct DatingIntentView: View {
    @Binding var selectedIntents: Set<DatingIntent>
    let onContinue: () -> Void
    let onBack: () -> Void

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

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

                        OnboardingProgressBar(progress: OnboardingStep.datingIntent.progress)
                            .padding(.horizontal, 24)
                    }
                    .padding(.top, 8)

                    Spacer()

                    // Content
                    VStack(spacing: 32) {
                        VStack(spacing: 12) {
                            Text("What are you\nlooking for?")
                                .font(AppTheme.serifFont(size: 32))
                                .foregroundColor(AppTheme.textPrimary)
                                .multilineTextAlignment(.center)

                            Text("Select all that apply")
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                        }
                        .padding(.horizontal, 24)

                        // Options
                        VStack(spacing: 12) {
                            ForEach(DatingIntent.allCases) { intent in
                                IntentOptionButton(
                                    intent: intent,
                                    isSelected: selectedIntents.contains(intent)
                                ) {
                                    if selectedIntents.contains(intent) {
                                        selectedIntents.remove(intent)
                                    } else {
                                        selectedIntents.insert(intent)
                                    }
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
                            .foregroundColor(!selectedIntents.isEmpty ? AppTheme.textPrimary : AppTheme.textMuted)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(AppTheme.cardBackground)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(!selectedIntents.isEmpty ? AppTheme.accent : AppTheme.cardBorder, lineWidth: 1)
                            )
                    }
                    .disabled(selectedIntents.isEmpty)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

struct IntentOptionButton: View {
    let intent: DatingIntent
    let isSelected: Bool
    let action: () -> Void

    var icon: String {
        switch intent {
        case .casual: return "heart"
        case .hookups: return "flame"
        case .longTerm: return "heart.fill"
        case .exploring: return "magnifyingglass"
        }
    }

    var body: some View {
        Button(action: action) {
            HStack(spacing: 16) {
                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundColor(isSelected ? AppTheme.accent : AppTheme.textSecondary)
                    .frame(width: 32)

                Text(intent.rawValue)
                    .font(AppTheme.sansFont(size: 17))
                    .foregroundColor(AppTheme.textPrimary)

                Spacer()

                if isSelected {
                    Image(systemName: "checkmark.square.fill")
                        .font(.system(size: 22))
                        .foregroundColor(AppTheme.accent)
                } else {
                    RoundedRectangle(cornerRadius: 4)
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
    DatingIntentView(
        selectedIntents: .constant([.casual, .exploring]),
        onContinue: { },
        onBack: { }
    )
}
