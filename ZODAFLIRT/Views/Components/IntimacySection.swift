//
//  IntimacySection.swift
//  ZODAFLIRT
//

import SwiftUI

struct IntimacySection: View {
    let intimacyProfile: IntimacyProfile
    let isPremium: Bool
    let userIntents: [String]
    let onUnlock: () -> Void

    @State private var expandedCard: String? = nil

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Section Header
            HStack {
                Text("Physical Connection")
                    .font(AppTheme.serifFont(size: 24))
                    .foregroundColor(AppTheme.textPrimary)

                Spacer()

                if !isPremium {
                    Image(systemName: "lock.fill")
                        .font(.system(size: 14))
                        .foregroundColor(AppTheme.accent)
                }
            }

            // Teaser (always visible)
            Text(intimacyProfile.teaser)
                .font(AppTheme.sansFont(size: 15))
                .foregroundColor(AppTheme.textSecondary)
                .lineSpacing(4)

            if isPremium {
                // Full content - expandable cards
                VStack(spacing: 12) {
                    IntimacyCard(
                        title: "Bedroom Energy",
                        content: .text(adjustedContent(intimacyProfile.bedroomEnergy)),
                        isExpanded: expandedCard == "energy",
                        onTap: { toggleCard("energy") }
                    )

                    IntimacyCard(
                        title: "What They Want",
                        content: .list(intimacyProfile.whatTheyWant),
                        isExpanded: expandedCard == "want",
                        onTap: { toggleCard("want") }
                    )

                    IntimacyCard(
                        title: "What to Avoid",
                        content: .list(intimacyProfile.whatToAvoid),
                        isExpanded: expandedCard == "avoid",
                        onTap: { toggleCard("avoid") }
                    )

                    IntimacyCard(
                        title: "Afterward",
                        content: .text(intimacyProfile.afterward),
                        isExpanded: expandedCard == "afterward",
                        onTap: { toggleCard("afterward") }
                    )
                }
            } else {
                // Locked state
                VStack(spacing: 12) {
                    // Preview cards (locked)
                    ForEach(["Bedroom Energy", "What They Want", "What to Avoid", "Afterward"], id: \.self) { title in
                        HStack {
                            Image(systemName: "chevron.right")
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundColor(AppTheme.textMuted)
                                .frame(width: 20)

                            Text(title)
                                .font(AppTheme.sansFontMedium(size: 16))
                                .foregroundColor(AppTheme.textMuted)

                            Spacer()

                            Image(systemName: "lock.fill")
                                .font(.system(size: 12))
                                .foregroundColor(AppTheme.textMuted)
                        }
                        .padding(16)
                        .background(AppTheme.cardBackground.opacity(0.5))
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(AppTheme.cardBorder.opacity(0.5), lineWidth: 1)
                        )
                    }

                    // Unlock CTA
                    Button(action: onUnlock) {
                        HStack {
                            Image(systemName: "sparkles")
                                .font(.system(size: 16))
                            Text("Unlock Connection Guide")
                                .font(AppTheme.sansFontMedium(size: 16))
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(AppTheme.buttonPrimaryBackground)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(AppTheme.buttonPrimaryBorder, lineWidth: 1)
                        )
                    }
                }
            }
        }
        .padding(.horizontal, 24)
    }

    private func toggleCard(_ card: String) {
        withAnimation(.easeInOut(duration: 0.25)) {
            if expandedCard == card {
                expandedCard = nil
            } else {
                expandedCard = card
            }
        }
    }

    private func adjustedContent(_ content: String) -> String {
        // Adjust tone based on user's dating intents
        if userIntents.contains(DatingIntent.longTerm.rawValue) {
            return content
                .replacingOccurrences(of: "chemistry", with: "deep connection")
                .replacingOccurrences(of: "passion", with: "emotional intimacy")
                .replacingOccurrences(of: "thrill", with: "comfort")
        }
        return content
    }
}

// MARK: - Intimacy Card Content Type

enum IntimacyCardContent {
    case text(String)
    case list([String])
}

// MARK: - Intimacy Card

struct IntimacyCard: View {
    let title: String
    let content: IntimacyCardContent
    let isExpanded: Bool
    let onTap: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Header
            Button(action: onTap) {
                HStack {
                    Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(AppTheme.accent)
                        .frame(width: 20)

                    Text(title)
                        .font(AppTheme.sansFontMedium(size: 16))
                        .foregroundColor(AppTheme.textPrimary)

                    Spacer()
                }
                .padding(16)
            }

            // Content
            if isExpanded {
                VStack(alignment: .leading, spacing: 12) {
                    switch content {
                    case .text(let text):
                        Text(text)
                            .font(AppTheme.sansFont(size: 15))
                            .foregroundColor(AppTheme.textSecondary)
                            .lineSpacing(4)
                            .fixedSize(horizontal: false, vertical: true)

                    case .list(let items):
                        ForEach(items, id: \.self) { item in
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
                .stroke(AppTheme.cardBorder, lineWidth: 1)
        )
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ScrollView {
            IntimacySection(
                intimacyProfile: IntimacyData.getProfile(for: .scorpio),
                isPremium: true,
                userIntents: [],
                onUnlock: { }
            )
            .padding(.top, 20)
        }
    }
}
