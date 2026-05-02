//
//  WelcomeView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var showOnboarding: Bool
    @State private var showAboutSheet = false

    var body: some View {
        ZStack {
            // Background
            AppTheme.backgroundGradient
                .ignoresSafeArea()

            // Content
            VStack(spacing: 0) {
                Spacer()

                // Header
                VStack(spacing: 12) {
                    Text("DaterUp!")
                        .font(AppTheme.serifFont(size: 42))
                        .foregroundColor(AppTheme.textPrimary)

                    Text("Dating Intelligence")
                        .font(AppTheme.sansFontMedium(size: 18))
                        .foregroundColor(AppTheme.accent)
                }
                .multilineTextAlignment(.center)

                // Subtitle
                Text("Personalized dating guidance\nbased on personality types")
                    .font(AppTheme.sansFont(size: 16))
                    .foregroundColor(AppTheme.textSecondary)
                    .multilineTextAlignment(.center)
                    .padding(.top, AppTheme.paddingLarge)

                Spacer()

                // Buttons
                VStack(spacing: AppTheme.paddingMedium) {
                    PrimaryButton(title: "Get Started") {
                        showOnboarding = true
                    }

                    SecondaryButton(title: "Learn More") {
                        showAboutSheet = true
                    }
                }
                .padding(.horizontal, AppTheme.paddingXLarge)
                .padding(.bottom, 60)
            }
        }
        .sheet(isPresented: $showAboutSheet) {
            AboutSheetView()
        }
    }
}

struct AboutSheetView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ZStack {
                AppTheme.backgroundGradient
                .ignoresSafeArea()

                ScrollView {
                    VStack(spacing: AppTheme.paddingLarge) {
                        Image(systemName: "sparkles")
                            .font(.system(size: 60))
                            .foregroundColor(AppTheme.accent)
                            .padding(.top, AppTheme.paddingXLarge)

                        Text("About DaterUp!")
                            .font(AppTheme.serifFont(size: 28))
                            .foregroundColor(AppTheme.textPrimary)

                        VStack(alignment: .leading, spacing: AppTheme.paddingMedium) {
                            AboutFeatureRow(
                                icon: "person.2.fill",
                                title: "Personality Insights",
                                description: "Discover your dating personality and learn how it shapes your romantic connections."
                            )

                            AboutFeatureRow(
                                icon: "heart.fill",
                                title: "Compatibility Analysis",
                                description: "Find your best matches based on personality type compatibility."
                            )

                            AboutFeatureRow(
                                icon: "book.fill",
                                title: "Dating Playbook",
                                description: "Get personalized tips and conversation starters for any situation."
                            )

                            AboutFeatureRow(
                                icon: "star.fill",
                                title: "Daily Guidance",
                                description: "Receive daily insights to help you navigate your dating life."
                            )
                        }
                        .padding(.horizontal, AppTheme.paddingLarge)

                        Spacer(minLength: AppTheme.paddingXLarge)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                    .foregroundColor(AppTheme.accent)
                }
            }
        }
    }
}

struct AboutFeatureRow: View {
    let icon: String
    let title: String
    let description: String

    var body: some View {
        HStack(alignment: .top, spacing: AppTheme.paddingMedium) {
            Image(systemName: icon)
                .font(.system(size: 24))
                .foregroundColor(AppTheme.accent)
                .frame(width: 32)

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(AppTheme.sansFontMedium(size: 16))
                    .foregroundColor(AppTheme.textPrimary)

                Text(description)
                    .font(AppTheme.sansFont(size: 14))
                    .foregroundColor(AppTheme.textSecondary)
            }
        }
        .padding(.vertical, AppTheme.paddingSmall)
    }
}

#Preview {
    WelcomeView(showOnboarding: .constant(false))
}
