//
//  PersonalityTypeIntroView.swift
//  ZODAFLIRT
//

import SwiftUI

struct PersonalityTypeIntroView: View {
    let onContinue: () -> Void

    @State private var showContent = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                AppTheme.backgroundGradient
                    .ignoresSafeArea()

                VStack(spacing: 0) {
                    Spacer()

                    // Main Content Card
                    VStack(spacing: 24) {
                        // Icon
                        Image(systemName: "person.2.fill")
                            .font(.system(size: 50))
                            .foregroundColor(AppTheme.accent)
                            .padding(.bottom, 8)

                        // Title
                        Text("Choose a personality type\nto get tailored dating advice")
                            .font(AppTheme.serifFont(size: 28))
                            .foregroundColor(AppTheme.textPrimary)
                            .multilineTextAlignment(.center)
                            .lineSpacing(4)

                        // Subtext
                        Text("We use personality styles to customize\ncommunication, chemistry, and compatibility guidance.")
                            .font(AppTheme.sansFont(size: 15))
                            .foregroundColor(AppTheme.textMuted)
                            .multilineTextAlignment(.center)
                            .lineSpacing(2)
                    }
                    .padding(32)
                    .background(
                        RoundedRectangle(cornerRadius: 24)
                            .fill(AppTheme.cardBackground)
                            .overlay(
                                RoundedRectangle(cornerRadius: 24)
                                    .stroke(AppTheme.cardBorder, lineWidth: 1)
                            )
                    )
                    .padding(.horizontal, 24)
                    .opacity(showContent ? 1 : 0)
                    .offset(y: showContent ? 0 : 20)

                    Spacer()

                    // Continue Button - glass style
                    Button(action: onContinue) {
                        Text("Continue")
                            .font(AppTheme.sansFontMedium(size: 17))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 54)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(AppTheme.buttonPrimaryBackground)
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(AppTheme.buttonPrimaryBorder, lineWidth: 1)
                            )
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                    .opacity(showContent ? 1 : 0)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5).delay(0.2)) {
                showContent = true
            }
        }
    }
}

#Preview {
    PersonalityTypeIntroView(onContinue: { })
}
