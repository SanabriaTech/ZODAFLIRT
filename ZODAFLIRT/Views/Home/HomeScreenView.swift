//
//  HomeScreenView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 5/1/26.
//
//  Post-onboarding hub for returning users. Greeting, search, three context
//  quick-actions (Got a date / Phone call / Texting), and Today's Edge tip.
//  Replaces the GoalSelectorView → PersonalityTypeIntroView → HomeView entry
//  flow with a single hub that navigates straight to the sign grid.

import SwiftUI

struct HomeScreenView: View {
    @Environment(UserManager.self) var userManager
    @Environment(PremiumManager.self) var premiumManager
    @Environment(StoreKitManager.self) var storeKitManager

    @State private var selectedGoal: DatingContext? = nil
    @State private var showSignGrid = false
    @State private var selectedDailyTip: DailyEdgeTip? = nil

    private var greeting: String {
        let hour = Calendar.current.component(.hour, from: Date())
        switch hour {
        case 5..<12: return "Good morning"
        case 12..<17: return "Good afternoon"
        case 17..<22: return "Good evening"
        default: return "Hi"
        }
    }

    private var greetingText: String {
        if let name = userManager.userProfile.name?.trimmingCharacters(in: .whitespaces),
           !name.isEmpty {
            return "\(greeting), \(name)"
        } else {
            return greeting
        }
    }

    var body: some View {
        NavigationStack {
            ZStack {
                AppTheme.backgroundPrimary
                    .ignoresSafeArea()

                ScrollView {
                    VStack(alignment: .leading, spacing: 24) {
                        // Header
                        VStack(alignment: .leading, spacing: 4) {
                            Text(greetingText)
                                .font(AppTheme.serifFont(size: 32))
                                .foregroundColor(AppTheme.textPrimary)

                            Text("Your edge starts here")
                                .font(AppTheme.sansFontMedium(size: 16))
                                .foregroundColor(AppTheme.teal)
                        }
                        .padding(.horizontal, 24)
                        .padding(.top, 16)

                        // Search bar (placeholder — taps through to sign grid for now)
                        Button(action: {
                            showSignGrid = true
                        }) {
                            HStack(spacing: 12) {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(AppTheme.textMuted)
                                    .font(.system(size: 16))

                                Text("Look up any personality type...")
                                    .font(AppTheme.sansFont(size: 15))
                                    .foregroundColor(AppTheme.textMuted)

                                Spacer()
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 14)
                            .background(AppTheme.cardBackground)
                            .cornerRadius(14)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(AppTheme.cardBorder, lineWidth: 1)
                            )
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal, 24)

                        // "Got something coming up?" section
                        VStack(alignment: .leading, spacing: 12) {
                            sectionHeader("GOT SOMETHING COMING UP?")

                            VStack(spacing: 12) {
                                quickActionCard(
                                    icon: "heart.fill",
                                    title: "Got a date?",
                                    subtitle: "First impressions, chemistry",
                                    context: .date
                                )

                                quickActionCard(
                                    icon: "phone.fill",
                                    title: "Phone call?",
                                    subtitle: "What to say, how to connect",
                                    context: .phoneCall
                                )

                                quickActionCard(
                                    icon: "message.fill",
                                    title: "Texting them?",
                                    subtitle: "Spark interest, keep momentum",
                                    context: .texting
                                )
                            }
                            .padding(.horizontal, 24)
                        }

                        // "Today's Edge" — Daily Decoder card
                        VStack(alignment: .leading, spacing: 12) {
                            sectionHeader("TODAY'S EDGE")

                            let todaysTip = DailyEdgeData.todaysTip

                            Button(action: {
                                selectedDailyTip = todaysTip
                            }) {
                                HStack(spacing: 16) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(AppTheme.teal.opacity(0.10))
                                            .frame(width: 110, height: 110)

                                        Image(todaysTip.sign.iconName)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 80)
                                    }

                                    VStack(alignment: .leading, spacing: 8) {
                                        Text("TODAY'S DECODED SIGN")
                                            .font(AppTheme.sansFontMedium(size: 9))
                                            .foregroundColor(AppTheme.teal)
                                            .tracking(1.0)

                                        Text(todaysTip.headline)
                                            .font(AppTheme.serifFont(size: 18))
                                            .foregroundColor(AppTheme.textPrimary)
                                            .lineLimit(3)
                                            .multilineTextAlignment(.leading)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }

                                    Spacer()
                                }
                                .padding(16)
                                .background(AppTheme.cardBackground)
                                .cornerRadius(16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(AppTheme.cardBorder, lineWidth: 1)
                                )
                                .shadow(color: AppTheme.cardShadow, radius: 6, x: 0, y: 2)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding(.horizontal, 24)
                        }

                        Spacer().frame(height: 100)
                    }
                }
            }
            .navigationDestination(item: $selectedGoal) { context in
                HomeView(datingContext: context, onBack: { selectedGoal = nil })
            }
            .navigationDestination(isPresented: $showSignGrid) {
                HomeView(datingContext: nil, onBack: { showSignGrid = false })
            }
            .navigationDestination(item: $selectedDailyTip) { tip in
                DailyDecoderDetailView(tip: tip)
            }
        }
    }

    private func sectionHeader(_ title: String) -> some View {
        HStack {
            Text(title)
                .font(AppTheme.sansFontMedium(size: 11))
                .foregroundColor(AppTheme.teal)
                .tracking(1.5)

            Spacer()

            Rectangle()
                .fill(AppTheme.teal.opacity(0.3))
                .frame(width: 60, height: 1)
        }
        .padding(.horizontal, 24)
    }

    private func quickActionCard(
        icon: String,
        title: String,
        subtitle: String,
        context: DatingContext
    ) -> some View {
        Button(action: {
            selectedGoal = context
        }) {
            HStack(spacing: 16) {
                ZStack {
                    Circle()
                        .fill(AppTheme.teal.opacity(0.12))
                        .frame(width: 48, height: 48)

                    Image(systemName: icon)
                        .font(.system(size: 20))
                        .foregroundColor(AppTheme.teal)
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(AppTheme.serifFontMedium(size: 22))
                        .foregroundColor(AppTheme.textPrimary)

                    Text(subtitle)
                        .font(AppTheme.sansFont(size: 13))
                        .foregroundColor(AppTheme.textSecondary)
                }

                Spacer()
            }
            .padding(16)
            .background(AppTheme.cardBackground)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(AppTheme.cardBorder, lineWidth: 1)
            )
            .shadow(color: AppTheme.cardShadow, radius: 6, x: 0, y: 2)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    HomeScreenView()
        .environment(UserManager())
        .environment(PremiumManager())
        .environment(StoreKitManager())
}
