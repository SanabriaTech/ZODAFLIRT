//
//  BestConnectionsSection.swift
//  ZODAFLIRT
//

import SwiftUI

struct BestConnectionsSection: View {
    let userSign: ZodiacSign
    let isPremium: Bool
    let onConnectionTap: (ZodiacSign) -> Void
    let onUnlock: () -> Void

    private var matches: [CompatibilityMatch] {
        ZodiacCompatibility.getBestMatches(for: userSign)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Section Header
            VStack(alignment: .leading, spacing: 4) {
                Text("Best Connections")
                    .font(AppTheme.serifFont(size: 24))
                    .foregroundColor(AppTheme.textPrimary)

                Text("Signs you naturally connect with — and why it works.")
                    .font(AppTheme.sansFont(size: 14))
                    .foregroundColor(AppTheme.textSecondary)
            }

            // Connection Cards
            VStack(spacing: 12) {
                ForEach(matches) { match in
                    let isUnlocked = isPremium || match.rank == 1

                    BestConnectionCard(
                        match: match,
                        isUnlocked: isUnlocked,
                        onTap: {
                            onConnectionTap(match.sign)
                        }
                    )
                }
            }

            // Unlock CTA for non-premium users
            if !isPremium {
                Button(action: onUnlock) {
                    HStack {
                        Image(systemName: "sparkles")
                            .font(.system(size: 16))
                        Text("Unlock Compatibility Insights")
                            .font(AppTheme.sansFontMedium(size: 15))
                    }
                    .foregroundColor(AppTheme.accent)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(AppTheme.cardBackground)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(AppTheme.accent, lineWidth: 1)
                    )
                }
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ScrollView {
            BestConnectionsSection(
                userSign: .aries,
                isPremium: false,
                onConnectionTap: { _ in },
                onUnlock: { }
            )
            .padding(24)
        }
    }
}
