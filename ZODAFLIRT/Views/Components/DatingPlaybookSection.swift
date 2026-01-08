//
//  DatingPlaybookSection.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct DatingPlaybookSection: View {
    let playbook: DatingPlaybook
    let isPremium: Bool
    let hasPlaybookAccess: Bool
    let canUseFreeUnlock: Bool
    let onUseFreeUnlock: () -> Void
    let onUnlockPremium: () -> Void

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

            // Subtitle
            Text("Real-world dating guidance that works")
                .font(AppTheme.sansFont(size: 15))
                .foregroundColor(AppTheme.textSecondary)

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

            // Playbook Cards
            VStack(spacing: 10) {
                DatingPlaybookCard(
                    card: playbook.firstDate,
                    isUnlocked: isPremium || hasPlaybookAccess
                )

                DatingPlaybookCard(
                    card: playbook.whatToSay,
                    isUnlocked: isPremium || hasPlaybookAccess
                )

                DatingPlaybookCard(
                    card: playbook.whereToTake,
                    isUnlocked: isPremium || hasPlaybookAccess
                )

                DatingPlaybookCard(
                    card: playbook.gifts,
                    isUnlocked: isPremium || hasPlaybookAccess
                )
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
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ScrollView {
            DatingPlaybookSection(
                playbook: DatingPlaybookData.getPlaybook(for: .gemini),
                isPremium: false,
                hasPlaybookAccess: false,
                canUseFreeUnlock: true,
                onUseFreeUnlock: { },
                onUnlockPremium: { }
            )
        }
    }
}
