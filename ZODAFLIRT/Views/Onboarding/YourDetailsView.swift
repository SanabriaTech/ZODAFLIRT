//
//  YourDetailsView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct YourDetailsView: View {
    @Binding var userName: String
    @Binding var userBirthday: Date
    @Binding var userGender: Gender?
    let onContinue: () -> Void
    let onBack: () -> Void

    @State private var isDatePickerExpanded = false
    @FocusState private var isNameFocused: Bool

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CosmicBackground()

                VStack(spacing: 0) {
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

                    // Scrollable Content
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .center, spacing: 24) {

                            // Title Section
                            VStack(spacing: 8) {
                                Text("Your Details")
                                    .font(AppTheme.serifFont(size: 32))
                                    .foregroundColor(AppTheme.textPrimary)

                                Text("We use this to understand your\nromantic style and compatibility.")
                                    .font(AppTheme.sansFont(size: 15))
                                    .foregroundColor(AppTheme.textSecondary)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.top, 24)

                            // Form Fields
                            VStack(alignment: .leading, spacing: 24) {

                                // Name Section
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("Your Name")
                                        .font(AppTheme.sansFont(size: 15))
                                        .foregroundColor(AppTheme.textSecondary)

                                    TextField("", text: $userName)
                                        .font(AppTheme.sansFont(size: 17))
                                        .foregroundColor(AppTheme.textPrimary)
                                        .placeholder(when: userName.isEmpty) {
                                            Text("Enter your name")
                                                .font(AppTheme.sansFont(size: 17))
                                                .foregroundColor(AppTheme.textMuted)
                                        }
                                        .focused($isNameFocused)
                                        .padding(16)
                                        .background(AppTheme.cardBackground)
                                        .cornerRadius(12)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(AppTheme.cardBorder, lineWidth: 1)
                                        )
                                }

                                // Birthday Section
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("Your Birthday")
                                        .font(AppTheme.sansFont(size: 15))
                                        .foregroundColor(AppTheme.textSecondary)

                                    Button(action: {
                                        isNameFocused = false
                                        withAnimation(.easeInOut(duration: 0.2)) {
                                            isDatePickerExpanded.toggle()
                                        }
                                    }) {
                                        HStack {
                                            Text(formatDate(userBirthday))
                                                .font(AppTheme.sansFont(size: 17))
                                                .foregroundColor(AppTheme.textPrimary)

                                            Spacer()

                                            Image(systemName: "chevron.right")
                                                .font(.system(size: 14, weight: .medium))
                                                .foregroundColor(AppTheme.textMuted)
                                                .rotationEffect(.degrees(isDatePickerExpanded ? 90 : 0))
                                        }
                                        .padding(16)
                                        .background(AppTheme.cardBackground)
                                        .cornerRadius(12)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(AppTheme.cardBorder, lineWidth: 1)
                                        )
                                    }

                                    if isDatePickerExpanded {
                                        DatePicker(
                                            "",
                                            selection: $userBirthday,
                                            displayedComponents: .date
                                        )
                                        .datePickerStyle(.wheel)
                                        .labelsHidden()
                                        .colorScheme(.dark)
                                        .frame(maxWidth: .infinity)
                                        .background(AppTheme.cardBackground)
                                        .cornerRadius(12)
                                    }
                                }

                                // Gender Section
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack(spacing: 4) {
                                        Text("Gender")
                                            .font(AppTheme.sansFont(size: 15))
                                            .foregroundColor(AppTheme.textSecondary)

                                        Text("(optional)")
                                            .font(AppTheme.sansFont(size: 13))
                                            .foregroundColor(AppTheme.textMuted)
                                    }

                                    VStack(spacing: 0) {
                                        genderOption(.male)
                                        Divider().background(AppTheme.cardBorder)
                                        genderOption(.female)
                                        Divider().background(AppTheme.cardBorder)
                                        genderOption(.preferNotToSay)
                                    }
                                    .background(AppTheme.cardBackground)
                                    .cornerRadius(12)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(AppTheme.cardBorder, lineWidth: 1)
                                    )
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 24)

                            Spacer().frame(height: 120)
                        }
                        .frame(width: geometry.size.width)
                    }

                    // Bottom Button
                    Button(action: onContinue) {
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
                    .padding(.bottom, 40)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .onTapGesture {
            isNameFocused = false
        }
    }

    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy"
        return formatter.string(from: date)
    }

    @ViewBuilder
    private func genderOption(_ gender: Gender) -> some View {
        Button(action: {
            isNameFocused = false
            userGender = gender
        }) {
            HStack {
                Text(gender.rawValue)
                    .font(AppTheme.sansFont(size: 17))
                    .foregroundColor(AppTheme.textPrimary)

                Spacer()

                if userGender == gender {
                    Image(systemName: "checkmark")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(AppTheme.accent)
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 14)
        }
    }
}

// MARK: - Placeholder Extension

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content
    ) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

#Preview {
    YourDetailsView(
        userName: .constant(""),
        userBirthday: .constant(Date()),
        userGender: .constant(.male),
        onContinue: { },
        onBack: { }
    )
}
