//
//  ZodiacProfileView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct ZodiacProfileView: View {
    let profile: ZodiacProfile
    let datingContext: DatingContext?
    let onBack: () -> Void
    let onSave: () -> Void

    @Environment(PremiumManager.self) var premiumManager
    @Environment(UserManager.self) var userManager
    @Environment(StoreKitManager.self) var storeKitManager
    @State private var showPaywall = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

                ScrollView(showsIndicators: false) {
                    VStack(spacing: 32) {
                        // Navigation Header
                        HStack {
                            Button(action: onBack) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(AppTheme.textPrimary)
                                    .frame(width: 44, height: 44)
                            }

                            Spacer()

                            Image(systemName: "ellipsis")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(AppTheme.textSecondary)
                                .frame(width: 44, height: 44)
                        }
                        .padding(.horizontal, 16)
                        .padding(.top, 8)

                        // Sign Header
                        VStack(spacing: 12) {
                            Image(profile.sign.iconName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 240, height: 240)

                            Text(profile.sign.name)
                                .font(AppTheme.serifFont(size: 32))
                                .foregroundColor(AppTheme.textPrimary)

                            Text("Personality Type")
                                .font(AppTheme.sansFontMedium(size: 14))
                                .foregroundColor(AppTheme.accent)

                            Text(profile.sign.dateRange)
                                .font(AppTheme.sansFont(size: 14))
                                .foregroundColor(AppTheme.textMuted)
                        }

                        // Personality Snapshot Section
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Personality Snapshot")
                                .font(AppTheme.sansFontMedium(size: 14))
                                .foregroundColor(AppTheme.accent)

                            Text(profile.tagline)
                                .font(AppTheme.serifFont(size: 22))
                                .foregroundColor(AppTheme.textPrimary)

                            Text(profile.introduction)
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineSpacing(4)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)

                        // Getting Their Attention Section (Always Free)
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Getting Their Attention")
                                .font(AppTheme.serifFont(size: 24))
                                .foregroundColor(AppTheme.textPrimary)

                            Text(profile.howToAttract.content)
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineSpacing(4)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)

                        // Dating Playbook Section
                        DatingPlaybookSection(
                            playbook: DatingPlaybookData.getPlaybook(for: profile.sign),
                            datingContext: datingContext,
                            isPremium: premiumManager.isPremium,
                            hasPlaybookAccess: userManager.hasPlaybookAccess(for: profile.sign),
                            canUseFreeUnlock: userManager.canUseFreePlaybookUnlock(),
                            onUseFreeUnlock: {
                                userManager.useFreePlaybookUnlock(for: profile.sign)
                            },
                            onUnlockPremium: {
                                showPaywall = true
                            }
                        )

                        // Building Chemistry Section
                        VStack(alignment: .leading, spacing: 16) {
                            HStack {
                                Text("Building Chemistry")
                                    .font(AppTheme.serifFont(size: 24))
                                    .foregroundColor(AppTheme.textPrimary)

                                Spacer()

                                if profile.howToSeduce.isPremiumContent && !premiumManager.isPremium {
                                    Image(systemName: "lock.fill")
                                        .font(.system(size: 14))
                                        .foregroundColor(AppTheme.accent)
                                }
                            }

                            Text(profile.howToSeduce.introduction)
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineSpacing(4)

                            // Scenarios with Premium Boundary
                            ForEach(Array(profile.howToSeduce.scenarios.enumerated()), id: \.element.id) { index, scenario in

                                // Add premium boundary before second scenario
                                if index == 1 && profile.howToSeduce.isPremiumContent && !premiumManager.isPremium {
                                    PremiumBoundaryDivider(message: "This is where things get more personal.")
                                        .padding(.vertical, 8)
                                }

                                let isLocked = index > 0 && profile.howToSeduce.isPremiumContent && !premiumManager.isPremium

                                VStack(alignment: .leading, spacing: 8) {
                                    HStack {
                                        Text("Approach \(scenario.number):")
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
                                        Text("Unlock to discover this approach...")
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
                                        .stroke(isLocked ? AppTheme.cardBorder : AppTheme.cardBorder, lineWidth: 1)
                                )
                            }

                            // Unlock button - Sign-specific CTA
                            if profile.howToSeduce.isPremiumContent && !premiumManager.isPremium {
                                Button(action: { showPaywall = true }) {
                                    Text("Unlock Full Dating Guide")
                                        .font(AppTheme.sansFontMedium(size: 15))
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
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)

                        // Intimacy & Physical Chemistry Section
                        IntimacySection(
                            intimacyProfile: IntimacyData.getProfile(for: profile.sign),
                            isPremium: premiumManager.isPremium,
                            userIntents: userManager.userProfile.datingIntents,
                            onUnlock: {
                                showPaywall = true
                            }
                        )

                        // What Works Section
                        VStack(alignment: .leading, spacing: 16) {
                            Text("What Works")
                                .font(AppTheme.serifFont(size: 24))
                                .foregroundColor(AppTheme.textPrimary)

                            VStack(alignment: .leading, spacing: 12) {
                                ForEach(profile.mustDos) { item in
                                    HStack(alignment: .top, spacing: 12) {
                                        Image(systemName: "checkmark")
                                            .font(.system(size: 14, weight: .semibold))
                                            .foregroundColor(AppTheme.accent)
                                            .frame(width: 20)

                                        Text(item.text)
                                            .font(AppTheme.sansFont(size: 16))
                                            .foregroundColor(AppTheme.textPrimary)
                                            .fixedSize(horizontal: false, vertical: true)

                                        Spacer()
                                    }
                                }
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)

                        // What to Avoid Section
                        VStack(alignment: .leading, spacing: 16) {
                            Text("What to Avoid")
                                .font(AppTheme.serifFont(size: 24))
                                .foregroundColor(AppTheme.textPrimary)

                            VStack(alignment: .leading, spacing: 12) {
                                ForEach(profile.avoids) { item in
                                    HStack(alignment: .top, spacing: 12) {
                                        Image(systemName: "xmark")
                                            .font(.system(size: 14, weight: .semibold))
                                            .foregroundColor(Color.red.opacity(0.8))
                                            .frame(width: 20)

                                        Text(item.text)
                                            .font(AppTheme.sansFont(size: 16))
                                            .foregroundColor(AppTheme.textPrimary)
                                            .fixedSize(horizontal: false, vertical: true)

                                        Spacer()
                                    }
                                }
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)

                        // Save Button
                        Button(action: onSave) {
                            Text("Save This Profile")
                                .font(AppTheme.sansFontMedium(size: 17))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 52)
                                .background(AppTheme.buttonPrimaryBackground)
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(AppTheme.buttonPrimaryBorder, lineWidth: 1)
                                )
                        }
                        .padding(.horizontal, 24)
                        .padding(.bottom, 40)
                    }
                    .padding(.top, 8)
                    .frame(width: geometry.size.width)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .sheet(isPresented: $showPaywall) {
            PaywallView(onDismiss: { showPaywall = false })
                .environment(storeKitManager)
                .environment(premiumManager)
        }
    }
}

#Preview {
    ZodiacProfileView(
        profile: SampleData.getProfile(for: .gemini),
        datingContext: .date,
        onBack: { },
        onSave: { }
    )
    .environment(StoreKitManager())
    .environment(PremiumManager())
    .environment(UserManager())
}
