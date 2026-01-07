//
//  ScenarioCard.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct ScenarioCard: View {
    let scenario: SeductionScenario
    var isLocked: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Scenario \(scenario.number):")
                    .font(AppTheme.sansFontMedium(size: 15))
                    .foregroundColor(AppTheme.accent)

                Text(scenario.title)
                    .font(AppTheme.sansFontMedium(size: 15))
                    .foregroundColor(AppTheme.textPrimary)

                Spacer()

                if isLocked {
                    Image(systemName: "lock.fill")
                        .font(.system(size: 12))
                        .foregroundColor(AppTheme.textMuted)
                }
            }

            if isLocked {
                Text("Unlock premium to reveal this scenario...")
                    .font(AppTheme.sansFont(size: 14))
                    .foregroundColor(AppTheme.textMuted)
                    .italic()
            } else {
                Text(scenario.description)
                    .font(AppTheme.sansFont(size: 14))
                    .foregroundColor(AppTheme.textSecondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AppTheme.cardBackground)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(AppTheme.cardBorder, lineWidth: 1)
        )
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack(spacing: 16) {
            ScenarioCard(
                scenario: SeductionScenario(
                    number: 1,
                    title: "The Mental Chase",
                    description: "Start with a playful debate on something unexpected."
                ),
                isLocked: false
            )

            ScenarioCard(
                scenario: SeductionScenario(
                    number: 2,
                    title: "The Surprise Move",
                    description: "Hidden content here."
                ),
                isLocked: true
            )
        }
        .padding()
    }
}
