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

    // Picks gender-specific content based on the user's GuidanceContext.
    // Falls back to the originally-passed profile for fields the gendered
    // dataset hasn't filled in yet (e.g. physicalChemistry.content from
    // SampleDataWomen, which Session 2B will populate).
    private var displayProfile: ZodiacProfile {
        guard let context = userManager.getGuidanceContext() else {
            return profile
        }
        switch context {
        case .heteroManToWoman, .lesbianWomanToWoman:
            let womenProfile = SampleDataWomen.getProfile(for: profile.sign, context: context)
            return Self.merge(override: womenProfile, fallback: profile)
        case .heteroWomanToMan, .gayManToMan:
            let menProfile = SampleDataMen.getProfile(for: profile.sign, context: context)
            return Self.merge(override: menProfile, fallback: profile)
        }
    }

    private var displayIntimacyProfile: IntimacyProfile {
        guard let context = userManager.getGuidanceContext() else {
            return IntimacyData.getProfile(for: profile.sign)
        }
        switch context {
        case .heteroManToWoman, .lesbianWomanToWoman:
            return IntimacyDataWomen.getProfile(for: profile.sign, context: context)
        case .heteroWomanToMan, .gayManToMan:
            return IntimacyDataMen.getProfile(for: profile.sign, context: context)
        }
    }

    private var displayPlaybook: DatingPlaybook {
        guard let context = userManager.getGuidanceContext() else {
            return DatingPlaybookData.getPlaybook(for: profile.sign)
        }
        switch context {
        case .heteroManToWoman, .lesbianWomanToWoman:
            return DatingPlaybookDataWomen.getPlaybook(for: profile.sign, context: context)
        case .heteroWomanToMan, .gayManToMan:
            return DatingPlaybookDataMen.getPlaybook(for: profile.sign, context: context)
        }
    }

    private static func merge(override: ZodiacProfile, fallback: ZodiacProfile) -> ZodiacProfile {
        ZodiacProfile(
            sign: override.sign,
            tagline: override.tagline.isEmpty ? fallback.tagline : override.tagline,
            introduction: override.introduction.isEmpty ? fallback.introduction : override.introduction,
            howToAttract: ProfileSection(
                title: override.howToAttract.title,
                content: override.howToAttract.content.isEmpty ? fallback.howToAttract.content : override.howToAttract.content,
                teaser: override.howToAttract.teaser ?? fallback.howToAttract.teaser,
                isPremium: override.howToAttract.isPremium
            ),
            howToSeduce: SeductionSection(
                title: override.howToSeduce.title,
                introduction: override.howToSeduce.introduction.isEmpty ? fallback.howToSeduce.introduction : override.howToSeduce.introduction,
                scenarios: override.howToSeduce.scenarios.isEmpty ? fallback.howToSeduce.scenarios : override.howToSeduce.scenarios,
                isPremiumContent: override.howToSeduce.isPremiumContent
            ),
            physicalChemistry: ProfileSection(
                title: override.physicalChemistry.title,
                content: override.physicalChemistry.content.isEmpty ? fallback.physicalChemistry.content : override.physicalChemistry.content,
                teaser: override.physicalChemistry.teaser ?? fallback.physicalChemistry.teaser,
                isPremium: override.physicalChemistry.isPremium
            ),
            mustDos: override.mustDos.isEmpty ? fallback.mustDos : override.mustDos,
            avoids: override.avoids.isEmpty ? fallback.avoids : override.avoids
        )
    }

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

                            if let target = userManager.getGuidanceTarget() {
                                HStack(spacing: 6) {
                                    Image(systemName: "person.2.fill")
                                        .font(.system(size: 11))
                                    Text("Guidance on \(target.displayName.lowercased())")
                                        .font(AppTheme.sansFont(size: 12))
                                }
                                .foregroundColor(AppTheme.accent)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(AppTheme.accent.opacity(0.15))
                                .cornerRadius(12)
                            }

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

                            Text(displayProfile.tagline)
                                .font(AppTheme.serifFont(size: 22))
                                .foregroundColor(AppTheme.textPrimary)

                            Text(displayProfile.introduction)
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

                            Text(displayProfile.howToAttract.content)
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineSpacing(4)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)

                        // Dating Playbook Section
                        DatingPlaybookSection(
                            playbook: displayPlaybook,
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

                                if displayProfile.howToSeduce.isPremiumContent && !premiumManager.isPremium {
                                    Image(systemName: "lock.fill")
                                        .font(.system(size: 14))
                                        .foregroundColor(AppTheme.accent)
                                }
                            }

                            Text(displayProfile.howToSeduce.introduction)
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineSpacing(4)

                            // Scenarios with Premium Boundary
                            ForEach(Array(displayProfile.howToSeduce.scenarios.enumerated()), id: \.element.id) { index, scenario in

                                // Add premium boundary before second scenario
                                if index == 1 && displayProfile.howToSeduce.isPremiumContent && !premiumManager.isPremium {
                                    PremiumBoundaryDivider(message: "This is where things get more personal.")
                                        .padding(.vertical, 8)
                                }

                                let isLocked = index > 0 && displayProfile.howToSeduce.isPremiumContent && !premiumManager.isPremium

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
                            if displayProfile.howToSeduce.isPremiumContent && !premiumManager.isPremium {
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
                            intimacyProfile: displayIntimacyProfile,
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
                                ForEach(displayProfile.mustDos) { item in
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
                                ForEach(displayProfile.avoids) { item in
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
