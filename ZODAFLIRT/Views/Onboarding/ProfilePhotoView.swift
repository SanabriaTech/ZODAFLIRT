//
//  ProfilePhotoView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI
import PhotosUI

struct ProfilePhotoView: View {
    @Environment(UserManager.self) var userManager
    let sign: ZodiacSign
    let onContinue: () -> Void
    let onBack: () -> Void

    @State private var selectedPhotoItem: PhotosPickerItem?
    @State private var selectedImage: UIImage?
    @State private var useZodiacSymbol = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

                VStack(spacing: 0) {
                    // Header
                    VStack(spacing: 12) {
                        HStack {
                            Button(action: onBack) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(AppTheme.textPrimary)
                                    .frame(width: 44, height: 44)
                            }
                            Spacer()
                        }
                        .padding(.horizontal, 16)

                        OnboardingProgressBar(progress: OnboardingStep.profilePhoto.progress)
                            .padding(.horizontal, 24)
                    }
                    .padding(.top, 8)

                    Spacer()

                    // Content
                    VStack(spacing: 32) {
                        VStack(spacing: 12) {
                            Text("Add a photo")
                                .font(AppTheme.serifFont(size: 32))
                                .foregroundColor(AppTheme.textPrimary)

                            Text("Or use your zodiac symbol as your avatar")
                                .font(AppTheme.sansFont(size: 16))
                                .foregroundColor(AppTheme.textSecondary)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.horizontal, 24)

                        // Photo Options
                        HStack(spacing: 24) {
                            // Photo Upload Option
                            PhotosPicker(selection: $selectedPhotoItem, matching: .images) {
                                VStack(spacing: 12) {
                                    ZStack {
                                        Circle()
                                            .fill(AppTheme.cardBackground)
                                            .frame(width: 120, height: 120)
                                            .overlay(
                                                Circle()
                                                    .stroke(selectedImage != nil && !useZodiacSymbol ? AppTheme.accent : AppTheme.cardBorder, lineWidth: 2)
                                            )

                                        if let image = selectedImage, !useZodiacSymbol {
                                            Image(uiImage: image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 116, height: 116)
                                                .clipShape(Circle())
                                        } else {
                                            Image(systemName: "camera.fill")
                                                .font(.system(size: 32))
                                                .foregroundColor(AppTheme.textMuted)
                                        }
                                    }

                                    Text("Upload Photo")
                                        .font(AppTheme.sansFont(size: 14))
                                        .foregroundColor(AppTheme.textSecondary)
                                }
                            }
                            .onChange(of: selectedPhotoItem) { _, newItem in
                                Task {
                                    if let data = try? await newItem?.loadTransferable(type: Data.self),
                                       let image = UIImage(data: data) {
                                        selectedImage = image
                                        useZodiacSymbol = false
                                    }
                                }
                            }

                            // Zodiac Symbol Option
                            Button(action: {
                                useZodiacSymbol = true
                                selectedImage = nil
                            }) {
                                VStack(spacing: 12) {
                                    ZStack {
                                        Circle()
                                            .fill(AppTheme.cardBackground)
                                            .frame(width: 120, height: 120)
                                            .overlay(
                                                Circle()
                                                    .stroke(useZodiacSymbol ? AppTheme.accent : AppTheme.cardBorder, lineWidth: 2)
                                            )

                                        Image(sign.iconName)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 60, height: 60)
                                    }

                                    Text("Use Symbol")
                                        .font(AppTheme.sansFont(size: 14))
                                        .foregroundColor(AppTheme.textSecondary)
                                }
                            }
                        }

                        Text("You can always change this later")
                            .font(AppTheme.sansFont(size: 14))
                            .foregroundColor(AppTheme.textMuted)
                    }

                    Spacer()

                    // Continue Button
                    Button(action: {
                        if let image = selectedImage, !useZodiacSymbol {
                            userManager.saveProfileImage(image)
                        } else {
                            userManager.useZodiacAsAvatar()
                        }
                        onContinue()
                    }) {
                        Text("Continue")
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(AppTheme.textPrimary)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(AppTheme.cardBackground)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(AppTheme.accent, lineWidth: 1)
                            )
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 16)

                    // Skip Button
                    Button(action: {
                        userManager.useZodiacAsAvatar()
                        onContinue()
                    }) {
                        Text("Skip for now")
                            .font(AppTheme.sansFont(size: 15))
                            .foregroundColor(AppTheme.textSecondary)
                    }
                    .padding(.bottom, 40)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

#Preview {
    ProfilePhotoView(
        sign: .gemini,
        onContinue: { },
        onBack: { }
    )
    .environment(UserManager())
}
