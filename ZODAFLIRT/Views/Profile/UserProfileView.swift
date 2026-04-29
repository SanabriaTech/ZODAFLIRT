//
//  UserProfileView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI
import PhotosUI

struct UserProfileView: View {
    @Environment(UserManager.self) var userManager
    @Environment(PremiumManager.self) var premiumManager
    @Environment(StoreKitManager.self) var storeKitManager
    @Environment(\.dismiss) var dismiss
    @Environment(\.openURL) private var openURL

    @State private var showingImagePicker = false
    @State private var showingNameEditor = false
    @State private var editedName: String = ""
    @State private var selectedPhotoItem: PhotosPickerItem?
    @State private var showPaywall = false
    @State private var selectedConnectionSign: ZodiacSign? = nil
    @State private var showRestoreSuccess = false
    @State private var showRestoreNoPurchases = false
    @State private var isRestoring = false

    // MARK: - Legal URLs
    private let termsURL = URL(string: "https://www.sanabriatech.com/st-terms")!
    private let privacyURL = URL(string: "https://www.sanabriatech.com/privacy")!

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

                ScrollView(showsIndicators: false) {
                    VStack(spacing: 24) {
                        // Navigation Header
                        HStack {
                            Button(action: { dismiss() }) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(AppTheme.textPrimary)
                                    .frame(width: 44, height: 44)
                            }

                            Spacer()

                            Text("Your Profile")
                                .font(AppTheme.serifFont(size: 20))
                                .foregroundColor(AppTheme.textPrimary)

                            Spacer()

                            // Placeholder for balance
                            Spacer().frame(width: 44)
                        }
                        .padding(.horizontal, 16)
                        .padding(.top, 8)

                        // Profile Photo
                        PhotosPicker(selection: $selectedPhotoItem, matching: .images) {
                            ZStack {
                                if let image = userManager.profileImage {
                                    Image(uiImage: image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 120, height: 120)
                                        .clipShape(Circle())
                                } else {
                                    Circle()
                                        .fill(AppTheme.cardBackground)
                                        .frame(width: 120, height: 120)
                                        .overlay(
                                            Image(systemName: "person.fill")
                                                .font(.system(size: 40))
                                                .foregroundColor(AppTheme.textMuted)
                                        )
                                }

                                // Edit badge
                                Circle()
                                    .fill(AppTheme.accent)
                                    .frame(width: 32, height: 32)
                                    .overlay(
                                        Image(systemName: "camera.fill")
                                            .font(.system(size: 14))
                                            .foregroundColor(AppTheme.background)
                                    )
                                    .offset(x: 42, y: 42)
                            }
                        }
                        .onChange(of: selectedPhotoItem) { _, newItem in
                            Task {
                                if let data = try? await newItem?.loadTransferable(type: Data.self),
                                   let image = UIImage(data: data) {
                                    userManager.saveProfileImage(image)
                                }
                            }
                        }

                        // Name
                        VStack(spacing: 4) {
                            if let name = userManager.userProfile.name, !name.isEmpty {
                                Text(name)
                                    .font(AppTheme.serifFont(size: 28))
                                    .foregroundColor(AppTheme.textPrimary)
                            } else {
                                Text("Add Your Name")
                                    .font(AppTheme.serifFont(size: 28))
                                    .foregroundColor(AppTheme.textMuted)
                            }

                            Button(action: {
                                editedName = userManager.userProfile.name ?? ""
                                showingNameEditor = true
                            }) {
                                Text("Edit")
                                    .font(AppTheme.sansFont(size: 14))
                                    .foregroundColor(AppTheme.accent)
                            }
                        }

                        // Zodiac Sign Card
                        if let sign = userManager.userProfile.zodiacSign {
                            VStack(spacing: 16) {
                                Image(sign.iconName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 160, height: 160)

                                Text(sign.name)
                                    .font(AppTheme.serifFont(size: 24))
                                    .foregroundColor(AppTheme.textPrimary)

                                if let birthday = userManager.userProfile.birthday {
                                    Text(formatBirthday(birthday))
                                        .font(AppTheme.sansFont(size: 15))
                                        .foregroundColor(AppTheme.textSecondary)
                                }

                                // Traits
                                HStack(spacing: 8) {
                                    ForEach(ZodiacPersonality.getTraits(for: sign).prefix(3), id: \.self) { trait in
                                        Text(trait)
                                            .font(AppTheme.sansFont(size: 12))
                                            .foregroundColor(AppTheme.accent)
                                            .padding(.horizontal, 12)
                                            .padding(.vertical, 6)
                                            .background(AppTheme.accent.opacity(0.15))
                                            .cornerRadius(16)
                                    }
                                }
                            }
                            .padding(24)
                            .frame(maxWidth: .infinity)
                            .background(AppTheme.cardBackground)
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(AppTheme.cardBorder, lineWidth: 1)
                            )
                            .padding(.horizontal, 24)

                            // Personality Summary
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Your Personality Snapshot")
                                    .font(AppTheme.serifFont(size: 20))
                                    .foregroundColor(AppTheme.textPrimary)

                                Text(ZodiacPersonality.getSummary(for: sign))
                                    .font(AppTheme.sansFont(size: 15))
                                    .foregroundColor(AppTheme.textSecondary)
                                    .lineSpacing(4)
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            .padding(20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(AppTheme.cardBackground)
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(AppTheme.cardBorder, lineWidth: 1)
                            )
                            .padding(.horizontal, 24)

                            // Guidance Settings Section
                            if let target = userManager.getGuidanceTarget() {
                                VStack(alignment: .leading, spacing: 12) {
                                    Text("Guidance Settings")
                                        .font(AppTheme.serifFont(size: 20))
                                        .foregroundColor(AppTheme.textPrimary)

                                    VStack(spacing: 12) {
                                        HStack {
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text("Currently getting guidance on")
                                                    .font(AppTheme.sansFont(size: 13))
                                                    .foregroundColor(AppTheme.textSecondary)

                                                Text(target.displayName)
                                                    .font(AppTheme.sansFontMedium(size: 18))
                                                    .foregroundColor(AppTheme.textPrimary)
                                            }

                                            Spacer()

                                            Image(systemName: "person.2.fill")
                                                .font(.system(size: 22))
                                                .foregroundColor(AppTheme.accent)
                                        }
                                        .padding(16)
                                        .background(AppTheme.cardBackground)
                                        .cornerRadius(12)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(AppTheme.cardBorder, lineWidth: 1)
                                        )

                                        Button(action: {
                                            userManager.toggleGuidanceTarget()
                                        }) {
                                            HStack {
                                                Image(systemName: "arrow.left.arrow.right")
                                                    .font(.system(size: 14))
                                                Text("Switch to guidance on \(target == .women ? "men" : "women")")
                                                    .font(AppTheme.sansFontMedium(size: 15))
                                            }
                                            .foregroundColor(AppTheme.accent)
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 48)
                                            .background(AppTheme.cardBackground)
                                            .cornerRadius(12)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 12)
                                                    .stroke(AppTheme.buttonSecondaryBorder, lineWidth: 1)
                                            )
                                        }
                                    }
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 24)
                            }

                            // Best Connections Section
                            BestConnectionsSection(
                                userSign: sign,
                                isPremium: premiumManager.isPremium,
                                guidanceContext: userManager.getGuidanceContext(),
                                onConnectionTap: { connectionSign in
                                    selectedConnectionSign = connectionSign
                                },
                                onUnlock: {
                                    showPaywall = true
                                }
                            )
                            .padding(.horizontal, 24)
                        }

                        // Saved Signs Section
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Saved Signs")
                                .font(AppTheme.serifFont(size: 20))
                                .foregroundColor(AppTheme.textPrimary)
                                .padding(.horizontal, 24)

                            if userManager.userProfile.savedZodiacSigns.isEmpty {
                                Text("No saved signs yet. Tap the heart on any profile to save it here.")
                                    .font(AppTheme.sansFont(size: 15))
                                    .foregroundColor(AppTheme.textMuted)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 20)
                            } else {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 12) {
                                        ForEach(userManager.userProfile.savedZodiacSigns) { sign in
                                            SavedSignCard(sign: sign)
                                        }
                                    }
                                    .padding(.horizontal, 24)
                                }
                            }
                        }

                        // Premium Status
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Subscription")
                                .font(AppTheme.serifFont(size: 20))
                                .foregroundColor(AppTheme.textPrimary)

                            HStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(premiumManager.isPremium ? "Premium Active" : "Free Plan")
                                        .font(AppTheme.sansFontMedium(size: 16))
                                        .foregroundColor(AppTheme.textPrimary)

                                    Text(premiumManager.isPremium ? "Full access to all features" : "Limited access")
                                        .font(AppTheme.sansFont(size: 14))
                                        .foregroundColor(AppTheme.textSecondary)
                                }

                                Spacer()

                                if premiumManager.isPremium {
                                    Image(systemName: "checkmark.seal.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(AppTheme.accent)
                                } else {
                                    Button(action: { showPaywall = true }) {
                                        Text("Upgrade")
                                            .font(AppTheme.sansFontMedium(size: 14))
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 16)
                                            .padding(.vertical, 8)
                                            .background(AppTheme.buttonPrimaryBackground)
                                            .cornerRadius(8)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .stroke(AppTheme.buttonPrimaryBorder, lineWidth: 1)
                                            )
                                    }
                                }
                            }
                            .padding(16)
                            .background(AppTheme.cardBackground)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(premiumManager.isPremium ? AppTheme.accent : AppTheme.cardBorder, lineWidth: 1)
                            )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)

                        // Legal Section
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Legal")
                                .font(AppTheme.serifFont(size: 20))
                                .foregroundColor(AppTheme.textPrimary)

                            VStack(spacing: 0) {
                                // Terms of Use
                                Button(action: {
                                    openURL(termsURL)
                                }) {
                                    HStack {
                                        Image(systemName: "doc.text")
                                            .font(.system(size: 16))
                                            .foregroundColor(AppTheme.textSecondary)
                                            .frame(width: 24)

                                        Text("Terms of Use")
                                            .font(AppTheme.sansFont(size: 15))
                                            .foregroundColor(AppTheme.textPrimary)

                                        Spacer()

                                        Image(systemName: "arrow.up.right")
                                            .font(.system(size: 12))
                                            .foregroundColor(AppTheme.textMuted)
                                    }
                                    .padding(16)
                                }

                                Divider()
                                    .background(AppTheme.cardBorder)
                                    .padding(.leading, 56)

                                // Privacy Policy
                                Button(action: {
                                    openURL(privacyURL)
                                }) {
                                    HStack {
                                        Image(systemName: "hand.raised")
                                            .font(.system(size: 16))
                                            .foregroundColor(AppTheme.textSecondary)
                                            .frame(width: 24)

                                        Text("Privacy Policy")
                                            .font(AppTheme.sansFont(size: 15))
                                            .foregroundColor(AppTheme.textPrimary)

                                        Spacer()

                                        Image(systemName: "arrow.up.right")
                                            .font(.system(size: 12))
                                            .foregroundColor(AppTheme.textMuted)
                                    }
                                    .padding(16)
                                }

                                Divider()
                                    .background(AppTheme.cardBorder)
                                    .padding(.leading, 56)

                                // Restore Purchases
                                Button(action: {
                                    Task {
                                        isRestoring = true
                                        await storeKitManager.restorePurchases()
                                        premiumManager.updateFromStoreKit()
                                        isRestoring = false
                                        if premiumManager.isPremium {
                                            showRestoreSuccess = true
                                        } else {
                                            showRestoreNoPurchases = true
                                        }
                                    }
                                }) {
                                    HStack {
                                        Image(systemName: "arrow.clockwise")
                                            .font(.system(size: 16))
                                            .foregroundColor(AppTheme.textSecondary)
                                            .frame(width: 24)

                                        Text("Restore Purchases")
                                            .font(AppTheme.sansFont(size: 15))
                                            .foregroundColor(AppTheme.textPrimary)

                                        Spacer()

                                        if isRestoring {
                                            ProgressView()
                                                .tint(AppTheme.textMuted)
                                        }
                                    }
                                    .padding(16)
                                }
                                .disabled(isRestoring)
                            }
                            .background(AppTheme.cardBackground)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(AppTheme.cardBorder, lineWidth: 1)
                            )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 24)

                        // App Disclaimer
                        VStack(spacing: 8) {
                            Divider()
                                .background(AppTheme.cardBorder)

                            Text("About This App")
                                .font(AppTheme.sansFontMedium(size: 14))
                                .foregroundColor(AppTheme.textSecondary)

                            Text("This app uses personality frameworks inspired by astrology to provide dating and relationship guidance. It does not provide horoscopes, predictions, or fortune-telling.")
                                .font(AppTheme.sansFont(size: 12))
                                .foregroundColor(AppTheme.textMuted)
                                .multilineTextAlignment(.center)
                                .lineSpacing(2)
                        }
                        .padding(.horizontal, 24)
                        .padding(.top, 24)
                        .padding(.bottom, 40)
                    }
                    .padding(.top, 8)
                    .frame(width: geometry.size.width)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .alert("Your Name", isPresented: $showingNameEditor) {
            TextField("Enter your name", text: $editedName)
            Button("Cancel", role: .cancel) { }
            Button("Save") {
                userManager.updateName(editedName)
            }
        }
        .sheet(isPresented: $showPaywall) {
            PaywallView(onDismiss: { showPaywall = false })
                .environment(storeKitManager)
                .environment(premiumManager)
        }
        .fullScreenCover(item: $selectedConnectionSign) { sign in
            let profile = SampleData.getProfile(for: sign)

            ZodiacProfileView(
                profile: profile,
                datingContext: nil,
                onBack: { selectedConnectionSign = nil },
                onSave: {
                    userManager.toggleSavedSign(sign)
                    selectedConnectionSign = nil
                }
            )
            .environment(storeKitManager)
            .environment(premiumManager)
            .environment(userManager)
        }
        .alert("Purchases Restored", isPresented: $showRestoreSuccess) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Your purchases have been restored successfully.")
        }
        .alert("No Purchases Found", isPresented: $showRestoreNoPurchases) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("No previous purchases were found for this Apple ID.")
        }
    }

    private func formatBirthday(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy"
        return formatter.string(from: date)
    }
}

// MARK: - Saved Sign Card

struct SavedSignCard: View {
    let sign: ZodiacSign

    var body: some View {
        VStack(spacing: 8) {
            Image(sign.iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 65, height: 65)

            Text(sign.name)
                .font(AppTheme.sansFontMedium(size: 14))
                .foregroundColor(AppTheme.textPrimary)
        }
        .frame(width: 90)
        .padding(16)
        .background(AppTheme.cardBackground)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(AppTheme.cardBorder, lineWidth: 1)
        )
    }
}

#Preview {
    UserProfileView()
        .environment(UserManager())
        .environment(PremiumManager())
        .environment(StoreKitManager())
}
