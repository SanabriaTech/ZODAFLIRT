//
//  BestConnectionCard.swift
//  ZODAFLIRT
//

import SwiftUI

struct BestConnectionCard: View {
    let match: CompatibilityMatch
    let isUnlocked: Bool
    let onTap: () -> Void

    var body: some View {
        Button(action: {
            if isUnlocked {
                onTap()
            }
        }) {
            HStack(spacing: 16) {
                // Rank Badge
                ZStack {
                    Circle()
                        .fill(rankColor)
                        .frame(width: 28, height: 28)

                    Text("#\(match.rank)")
                        .font(AppTheme.sansFontMedium(size: 12))
                        .foregroundColor(.black)
                }

                // Zodiac Icon
                Image(match.sign.iconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .opacity(isUnlocked ? 1.0 : 0.5)

                // Content
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(match.sign.name)
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(isUnlocked ? AppTheme.textPrimary : AppTheme.textMuted)

                        if !isUnlocked {
                            Image(systemName: "lock.fill")
                                .font(.system(size: 12))
                                .foregroundColor(AppTheme.textMuted)
                        }
                    }

                    if isUnlocked {
                        Text(match.headline)
                            .font(AppTheme.sansFont(size: 14))
                            .foregroundColor(AppTheme.accent)

                        Text(match.explanation)
                            .font(AppTheme.sansFont(size: 13))
                            .foregroundColor(AppTheme.textSecondary)
                            .lineSpacing(2)
                            .fixedSize(horizontal: false, vertical: true)
                    } else {
                        Text("Unlock premium to see why this pairing works.")
                            .font(AppTheme.sansFont(size: 13))
                            .foregroundColor(AppTheme.textMuted)
                            .italic()
                    }
                }

                Spacer()

                // Chevron for unlocked cards
                if isUnlocked {
                    Image(systemName: "chevron.right")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(AppTheme.textMuted)
                }
            }
            .padding(16)
            .background(AppTheme.cardBackground)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(isUnlocked ? AppTheme.cardBorder : AppTheme.cardBorder.opacity(0.5), lineWidth: 1)
            )
        }
        .disabled(!isUnlocked)
    }

    private var rankColor: Color {
        switch match.rank {
        case 1: return AppTheme.accent
        case 2: return AppTheme.accent.opacity(0.7)
        case 3: return AppTheme.accent.opacity(0.5)
        default: return AppTheme.accent.opacity(0.3)
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack(spacing: 12) {
            BestConnectionCard(
                match: CompatibilityMatch(
                    sign: .leo,
                    rank: 1,
                    headline: "Fire meets fire",
                    explanation: "Leo matches your energy and ambition. Together you're a power couple."
                ),
                isUnlocked: true,
                onTap: { }
            )

            BestConnectionCard(
                match: CompatibilityMatch(
                    sign: .sagittarius,
                    rank: 2,
                    headline: "Adventure partners",
                    explanation: "Sagittarius keeps up with your spontaneity."
                ),
                isUnlocked: false,
                onTap: { }
            )
        }
        .padding()
    }
}
