//
//  HomeView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct HomeView: View {
    @Environment(PremiumManager.self) var premiumManager
    @Environment(UserManager.self) var userManager
    @Environment(StoreKitManager.self) var storeKitManager

    let datingContext: DatingContext?
    let onBack: () -> Void

    @State private var selectedSign: ZodiacSign? = nil
    @State private var showingProfile = false

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    var subtitleText: String {
        if let context = datingContext {
            switch context {
            case .date:
                return "Select their personality type"
            case .phoneCall:
                return "Select their personality type"
            case .texting:
                return "Select their personality type"
            }
        }
        return "Who are you connecting with?"
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                AppTheme.backgroundGradient
                    .ignoresSafeArea()

                VStack(spacing: 0) {
                    // Header
                    HStack {
                        // Back Button
                        Button(action: onBack) {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(AppTheme.textPrimary)
                                .frame(width: 44, height: 44)
                        }

                        VStack(alignment: .leading, spacing: 4) {
                            Text("DaterUp!")
                                .font(AppTheme.serifFont(size: 28))
                                .foregroundColor(AppTheme.textPrimary)
                            Text("Dating Intelligence")
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.accent)
                        }

                        Spacer()

                        // Profile Button
                        Button(action: { showingProfile = true }) {
                            if let image = userManager.profileImage {
                                Image(uiImage: image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                            } else {
                                Circle()
                                    .fill(AppTheme.cardBackground)
                                    .frame(width: 40, height: 40)
                                    .overlay(
                                        Image(systemName: "person.fill")
                                            .font(.system(size: 18))
                                            .foregroundColor(AppTheme.textMuted)
                                    )
                            }
                        }
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 16)
                    .padding(.bottom, 8)

                    // Context Badge (if context selected)
                    if let context = datingContext {
                        HStack(spacing: 8) {
                            Image(systemName: context.icon)
                                .font(.system(size: 12))
                            Text(context.title)
                                .font(AppTheme.sansFont(size: 13))
                        }
                        .foregroundColor(AppTheme.accent)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(AppTheme.accent.opacity(0.15))
                        .cornerRadius(16)
                        .padding(.bottom, 8)
                    }

                    // Subtitle
                    Text(subtitleText)
                        .font(AppTheme.sansFont(size: 15))
                        .foregroundColor(AppTheme.textSecondary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)
                        .padding(.bottom, 8)

                    // Section label
                    Text("Personality Types")
                        .font(AppTheme.sansFontMedium(size: 12))
                        .foregroundColor(AppTheme.textMuted)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)
                        .padding(.bottom, 16)

                    // Personality Grid
                    ScrollView(showsIndicators: false) {
                        LazyVGrid(columns: columns, spacing: 12) {
                            ForEach(ZodiacSign.allCases) { sign in
                                ZodiacGridTile(sign: sign) {
                                    selectedSign = sign
                                }
                            }
                        }
                        .padding(.horizontal, 24)
                        .padding(.bottom, 40)
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .fullScreenCover(item: $selectedSign) { sign in
            let profile = SampleData.getProfile(for: sign)

            ZodiacProfileView(
                profile: profile,
                datingContext: datingContext,
                onBack: { selectedSign = nil },
                onSave: {
                    userManager.toggleSavedSign(sign)
                    selectedSign = nil
                }
            )
            .environment(storeKitManager)
            .environment(premiumManager)
            .environment(userManager)
        }
        .fullScreenCover(isPresented: $showingProfile) {
            UserProfileView()
                .environment(storeKitManager)
                .environment(premiumManager)
                .environment(userManager)
        }
    }
}

#Preview {
    HomeView(datingContext: .date, onBack: { })
        .environment(StoreKitManager())
        .environment(PremiumManager())
        .environment(UserManager())
}
