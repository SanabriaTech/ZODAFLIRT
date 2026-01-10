//
//  DatingPlaybookSection.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct DatingPlaybookSection: View {
    let playbook: DatingPlaybook
    let datingContext: DatingContext?
    let isPremium: Bool
    let hasPlaybookAccess: Bool
    let canUseFreeUnlock: Bool
    let onUseFreeUnlock: () -> Void
    let onUnlockPremium: () -> Void

    private var orderedCards: [PlaybookCard] {
        var cards = [
            playbook.firstDate,
            playbook.whatToSay,
            playbook.texting,
            playbook.whereToTake,
            playbook.gifts
        ]

        // Reorder based on context - move relevant card to first position
        if let context = datingContext {
            switch context {
            case .date:
                // firstDate is already first, no change needed
                break
            case .phoneCall:
                // Move whatToSay to first
                if let index = cards.firstIndex(where: { $0.title.contains("What to Say") }) {
                    let card = cards.remove(at: index)
                    cards.insert(card, at: 0)
                }
            case .texting:
                // Move texting to first
                if let index = cards.firstIndex(where: { $0.title.contains("Texting") }) {
                    let card = cards.remove(at: index)
                    cards.insert(card, at: 0)
                }
            }
        }

        return cards
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Section Header
            HStack {
                Text("Dating Playbook")
                    .font(AppTheme.serifFont(size: 24))
                    .foregroundColor(AppTheme.textPrimary)

                Spacer()

                if !isPremium && !hasPlaybookAccess {
                    Image(systemName: "lock.fill")
                        .font(.system(size: 14))
                        .foregroundColor(AppTheme.accent)
                }
            }

            // Subtitle with context hint
            if let context = datingContext {
                Text(contextSubtitle(for: context))
                    .font(AppTheme.sansFont(size: 15))
                    .foregroundColor(AppTheme.accent)
            } else {
                Text("Real-world dating guidance that works")
                    .font(AppTheme.sansFont(size: 15))
                    .foregroundColor(AppTheme.textSecondary)
            }

            // Free unlock message
            if !isPremium && !hasPlaybookAccess && canUseFreeUnlock {
                HStack(spacing: 8) {
                    Image(systemName: "gift.fill")
                        .font(.system(size: 14))
                        .foregroundColor(AppTheme.accent)

                    Text("You have 1 free Dating Playbook unlock")
                        .font(AppTheme.sansFont(size: 14))
                        .foregroundColor(AppTheme.accent)
                }
                .padding(12)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(AppTheme.accent.opacity(0.1))
                .cornerRadius(8)
            }

            // Playbook Cards (ordered by context)
            VStack(spacing: 10) {
                ForEach(Array(orderedCards.enumerated()), id: \.element.id) { index, card in
                    DatingPlaybookCard(
                        card: card,
                        isUnlocked: isPremium || hasPlaybookAccess,
                        isHighlighted: index == 0 && datingContext != nil
                    )
                }
            }

            // Unlock Buttons
            if !isPremium && !hasPlaybookAccess {
                VStack(spacing: 12) {
                    // Free unlock button
                    if canUseFreeUnlock {
                        Button(action: onUseFreeUnlock) {
                            HStack {
                                Image(systemName: "gift.fill")
                                    .font(.system(size: 16))
                                Text("Use Your Free Unlock")
                                    .font(AppTheme.sansFontMedium(size: 16))
                            }
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(AppTheme.accent)
                            .cornerRadius(12)
                        }
                    }

                    // Premium unlock button
                    Button(action: onUnlockPremium) {
                        Text(canUseFreeUnlock ? "Unlock All Dating Playbooks" : "Get Real-World Dating Guidance")
                            .font(AppTheme.sansFontMedium(size: 15))
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
                .padding(.top, 8)
            }
        }
        .padding(.horizontal, 24)
    }

    private func contextSubtitle(for context: DatingContext) -> String {
        switch context {
        case .date:
            return "Start with first date tips"
        case .phoneCall:
            return "Start with conversation tips"
        case .texting:
            return "Start with texting tips"
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ScrollView {
            DatingPlaybookSection(
                playbook: DatingPlaybookData.getPlaybook(for: .gemini),
                datingContext: .texting,
                isPremium: false,
                hasPlaybookAccess: false,
                canUseFreeUnlock: true,
                onUseFreeUnlock: { },
                onUnlockPremium: { }
            )
        }
    }
}
