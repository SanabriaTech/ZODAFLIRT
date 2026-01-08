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
    @State private var selectedSign: ZodiacSign? = nil
    @State private var showingProfile = false

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

                VStack(spacing: 0) {
                    // Header
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Zodaflirt")
                                .font(AppTheme.serifFont(size: 28))
                                .foregroundColor(AppTheme.textPrimary)
                            Text("Zodiac seduction!")
                                .font(AppTheme.serifFont(size: 28))
                                .italic()
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

                    // Subtitle
                    Text("Now, who are you curious about?")
                        .font(AppTheme.sansFont(size: 15))
                        .foregroundColor(AppTheme.textSecondary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)
                        .padding(.bottom, 24)

                    // Zodiac Grid
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
                .environment(userManager)
        }
    }
}

#Preview {
    HomeView()
        .environment(StoreKitManager())
        .environment(PremiumManager())
        .environment(UserManager())
}
