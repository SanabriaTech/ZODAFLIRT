//
//  DatingPlaybookCard.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct DatingPlaybookCard: View {
    let card: PlaybookCard
    let isUnlocked: Bool
    var isHighlighted: Bool = false
    @State private var isExpanded: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Header - always visible
            Button(action: {
                if isUnlocked {
                    withAnimation(.easeInOut(duration: 0.25)) {
                        isExpanded.toggle()
                    }
                }
            }) {
                HStack {
                    Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(isUnlocked ? AppTheme.accent : AppTheme.textMuted)
                        .frame(width: 20)

                    Text(card.title)
                        .font(AppTheme.sansFontMedium(size: 16))
                        .foregroundColor(isUnlocked ? AppTheme.textPrimary : AppTheme.textMuted)

                    Spacer()

                    if !isUnlocked {
                        Image(systemName: "lock.fill")
                            .font(.system(size: 12))
                            .foregroundColor(AppTheme.textMuted)
                    }
                }
                .padding(16)
            }
            .disabled(!isUnlocked)

            // Content - expandable
            if isExpanded && isUnlocked {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(card.content, id: \.self) { item in
                        HStack(alignment: .top, spacing: 12) {
                            Circle()
                                .fill(AppTheme.accent)
                                .frame(width: 6, height: 6)
                                .offset(y: 6)

                            Text(item)
                                .font(AppTheme.sansFont(size: 15))
                                .foregroundColor(AppTheme.textSecondary)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                    }
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .background(AppTheme.cardBackground)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(isHighlighted && isUnlocked ? AppTheme.accent : AppTheme.cardBorder, lineWidth: isHighlighted && isUnlocked ? 1.5 : 1)
        )
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack(spacing: 12) {
            DatingPlaybookCard(
                card: PlaybookCard(title: "First Date With a Gemini", content: ["Keep it fun", "Be spontaneous"]),
                isUnlocked: true,
                isHighlighted: true
            )
            DatingPlaybookCard(
                card: PlaybookCard(title: "What to Say", content: ["Be witty", "Ask questions"]),
                isUnlocked: false,
                isHighlighted: false
            )
        }
        .padding()
    }
}
