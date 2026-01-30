//
//  GoalSelectorView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/8/26.
//

import SwiftUI

struct GoalSelectorView: View {
    @Environment(UserManager.self) var userManager
    let onGoalSelected: (DatingContext?) -> Void

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

                VStack(spacing: 0) {
                    // Skip Button
                    HStack {
                        Spacer()
                        Button(action: {
                            onGoalSelected(nil)
                        }) {
                            Text("Skip")
                                .font(AppTheme.sansFont(size: 15))
                                .foregroundColor(AppTheme.textSecondary)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 16)

                    Spacer()
                        .frame(maxHeight: 60)

                    // Header
                    VStack(spacing: 20) {
                        // Primary title - H1
                        Text("Prepare for dates\nwith confidence")
                            .font(AppTheme.serifFont(size: 36))
                            .foregroundColor(AppTheme.textPrimary)
                            .multilineTextAlignment(.center)

                        // Secondary heading
                        VStack(spacing: 8) {
                            Text("What's your goal right now?")
                                .font(AppTheme.sansFontMedium(size: 20))
                                .foregroundColor(AppTheme.textSecondary)

                            Text("Get personalized dating guidance.")
                                .font(AppTheme.sansFont(size: 15))
                                .foregroundColor(AppTheme.textMuted)
                        }
                    }
                    .padding(.horizontal, 24)

                    Spacer().frame(height: 40)

                    // Goal Cards
                    VStack(spacing: 16) {
                        ForEach(DatingContext.allCases) { context in
                            GoalCard(context: context) {
                                userManager.setDatingContext(context)
                                onGoalSelected(context)
                            }
                        }
                    }
                    .padding(.horizontal, 24)

                    Spacer()
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

// MARK: - Goal Card

struct GoalCard: View {
    let context: DatingContext
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 16) {
                // Icon
                ZStack {
                    Circle()
                        .fill(AppTheme.accent.opacity(0.15))
                        .frame(width: 50, height: 50)

                    Image(systemName: context.icon)
                        .font(.system(size: 20))
                        .foregroundColor(AppTheme.accent)
                }

                // Text
                VStack(alignment: .leading, spacing: 4) {
                    Text(context.title)
                        .font(AppTheme.sansFontMedium(size: 18))
                        .foregroundColor(AppTheme.textPrimary)

                    Text(context.subtitle)
                        .font(AppTheme.sansFont(size: 14))
                        .foregroundColor(AppTheme.textSecondary)
                        .lineLimit(2)
                }

                Spacer()

                // Arrow
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(AppTheme.textMuted)
            }
            .padding(20)
            .background(AppTheme.cardBackground)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(AppTheme.cardBorder, lineWidth: 1)
            )
        }
    }
}

#Preview {
    GoalSelectorView(onGoalSelected: { _ in })
        .environment(UserManager())
}
