//
//  ContextHeroCard.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//

import SwiftUI

struct ContextHeroCard: View {
    let sign: ZodiacSign
    let context: DatingContext
    let playbook: DatingPlaybook
    let isUnlocked: Bool
    let canUseFreeUnlock: Bool
    let onUseFreeUnlock: () -> Void
    let onUnlockPremium: () -> Void

    private var relevantCard: PlaybookCard {
        switch context {
        case .date:
            return playbook.firstDate
        case .phoneCall:
            return playbook.whatToSay
        case .texting:
            return playbook.texting
        }
    }

    private var contextTitle: String {
        switch context {
        case .date:
            return "Date Coming Up With a \(sign.name)?"
        case .phoneCall:
            return "Phone Call With a \(sign.name)?"
        case .texting:
            return "Texting a \(sign.name)?"
        }
    }

    private var contextSubtitle: String {
        switch context {
        case .date:
            return "Here's everything you need to know."
        case .phoneCall:
            return "What to say, how to connect, what to avoid."
        case .texting:
            return "How to spark interest and keep momentum."
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Header with context icon
            HStack(spacing: 12) {
                ZStack {
                    Circle()
                        .fill(AppTheme.accent.opacity(0.20))
                        .frame(width: 44, height: 44)

                    Image(systemName: context.icon)
                        .font(.system(size: 18))
                        .foregroundColor(AppTheme.accent)
                }

                VStack(alignment: .leading, spacing: 2) {
                    Text(contextTitle)
                        .font(AppTheme.serifFont(size: 22))
                        .foregroundColor(AppTheme.textPrimary)

                    Text(contextSubtitle)
                        .font(AppTheme.sansFont(size: 13))
                        .foregroundColor(AppTheme.textSecondary)
                }

                Spacer()
            }

            // Content area
            if isUnlocked {
                // Full content
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(relevantCard.content, id: \.self) { item in
                        HStack(alignment: .top, spacing: 12) {
                            Circle()
                                .fill(AppTheme.accent)
                                .frame(width: 6, height: 6)
                                .offset(y: 6)

                            Text(item)
                                .font(AppTheme.sansFont(size: 15))
                                .foregroundColor(AppTheme.textPrimary)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineSpacing(2)
                        }
                    }
                }
            } else {
                // Locked teaser + CTA
                VStack(alignment: .leading, spacing: 12) {
                    // Show first item as teaser
                    if let firstItem = relevantCard.content.first {
                        HStack(alignment: .top, spacing: 12) {
                            Circle()
                                .fill(AppTheme.accent)
                                .frame(width: 6, height: 6)
                                .offset(y: 6)

                            Text(firstItem)
                                .font(AppTheme.sansFont(size: 15))
                                .foregroundColor(AppTheme.textPrimary)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineSpacing(2)
                        }
                    }

                    // Blurred placeholder lines for hidden content
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(0..<3, id: \.self) { index in
                            HStack(alignment: .top, spacing: 12) {
                                Circle()
                                    .fill(AppTheme.textMuted.opacity(0.3))
                                    .frame(width: 6, height: 6)
                                    .offset(y: 6)

                                RoundedRectangle(cornerRadius: 4)
                                    .fill(AppTheme.textMuted.opacity(0.15 - Double(index) * 0.03))
                                    .frame(height: 12)
                                    .frame(maxWidth: .infinity)
                                    .padding(.trailing, CGFloat(40 + index * 30))
                            }
                        }
                    }

                    Text("Unlock to see complete guidance for connecting with this \(sign.name).")
                        .font(AppTheme.sansFont(size: 13))
                        .foregroundColor(AppTheme.textMuted)
                        .italic()
                        .padding(.top, 4)

                    // CTAs
                    VStack(spacing: 10) {
                        if canUseFreeUnlock {
                            Button(action: onUseFreeUnlock) {
                                HStack {
                                    Image(systemName: "gift.fill")
                                        .font(.system(size: 14))
                                    Text("Use Your Free Unlock")
                                        .font(AppTheme.sansFontMedium(size: 15))
                                }
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 48)
                                .background(AppTheme.buttonPrimaryBackground)
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(AppTheme.buttonPrimaryBorder, lineWidth: 1)
                                )
                            }
                        }

                        Button(action: onUnlockPremium) {
                            Text(canUseFreeUnlock ? "Unlock Everything With Premium" : "Unlock With Premium")
                                .font(AppTheme.sansFontMedium(size: 14))
                                .foregroundColor(AppTheme.accent)
                                .frame(maxWidth: .infinity)
                                .frame(height: 44)
                                .background(AppTheme.buttonSecondaryBackground)
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(AppTheme.buttonSecondaryBorder, lineWidth: 1)
                                )
                        }
                    }
                    .padding(.top, 8)
                }
            }
        }
        .padding(20)
        .background(AppTheme.cardBackground)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(isUnlocked ? AppTheme.accent.opacity(0.4) : AppTheme.cardBorder, lineWidth: 1)
        )
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack(spacing: 16) {
            ContextHeroCard(
                sign: .scorpio,
                context: .date,
                playbook: DatingPlaybookData.getPlaybook(for: .scorpio),
                isUnlocked: false,
                canUseFreeUnlock: true,
                onUseFreeUnlock: { },
                onUnlockPremium: { }
            )
        }
        .padding()
    }
}
