//
//  Theme.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct AppTheme {

    // MARK: - Text Colors

    /// Primary text - pure white
    static let textPrimary = Color.white

    /// Secondary text - 70% white
    static let textSecondary = Color.white.opacity(0.70)

    /// Muted text - 55% white
    static let textMuted = Color.white.opacity(0.55)

    // MARK: - Accent Colors (Platinum - replaces gold)

    /// Platinum accent - primary highlight color
    static let accent = Color(red: 230/255, green: 231/255, blue: 235/255)

    /// Accent with transparency
    static let accentMuted = Color(red: 230/255, green: 231/255, blue: 235/255).opacity(0.70)

    /// Legacy support
    static let accentLight = Color(red: 230/255, green: 231/255, blue: 235/255).opacity(0.85)

    // MARK: - Glass Surface Colors

    /// Card background - glass effect
    static let cardBackground = Color.white.opacity(0.08)

    /// Card border - subtle glass edge
    static let cardBorder = Color.white.opacity(0.15)

    /// Elevated card background - slightly more visible
    static let cardBackgroundElevated = Color.white.opacity(0.12)

    /// Elevated card border
    static let cardBorderElevated = Color.white.opacity(0.20)

    // MARK: - Button Colors

    /// Primary CTA background
    static let buttonPrimaryBackground = Color.white.opacity(0.12)

    /// Primary CTA border
    static let buttonPrimaryBorder = Color.white.opacity(0.20)

    /// Secondary/ghost button background
    static let buttonSecondaryBackground = Color.clear

    /// Secondary button border
    static let buttonSecondaryBorder = Color.white.opacity(0.16)

    // MARK: - Background

    /// Main app background
    static let background = Color.black

    // MARK: - Fonts

    static func serifFont(size: CGFloat) -> Font {
        .custom("Didot", size: size)
    }

    static func sansFont(size: CGFloat) -> Font {
        .system(size: size, weight: .regular)
    }

    static func sansFontMedium(size: CGFloat) -> Font {
        .system(size: size, weight: .medium)
    }

    static func sansFontSemibold(size: CGFloat) -> Font {
        .system(size: size, weight: .semibold)
    }

    static func sansFontBold(size: CGFloat) -> Font {
        .system(size: size, weight: .semibold)
    }

    // MARK: - Spacing

    static let paddingSmall: CGFloat = 8
    static let paddingMedium: CGFloat = 16
    static let paddingLarge: CGFloat = 24
    static let paddingXLarge: CGFloat = 32

    // MARK: - Corner Radius

    static let cornerRadiusSmall: CGFloat = 8
    static let cornerRadiusMedium: CGFloat = 12
    static let cornerRadiusLarge: CGFloat = 16
}

// MARK: - Reusable Button Styles

struct PrimaryButtonStyle: ButtonStyle {
    var isEnabled: Bool = true

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(AppTheme.sansFontMedium(size: 17))
            .foregroundColor(isEnabled ? .white : AppTheme.textMuted)
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
            .opacity(configuration.isPressed ? 0.8 : 1.0)
    }
}

struct SecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(AppTheme.sansFontMedium(size: 15))
            .foregroundColor(AppTheme.accent)
            .frame(maxWidth: .infinity)
            .frame(height: 48)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(AppTheme.buttonSecondaryBackground)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(AppTheme.buttonSecondaryBorder, lineWidth: 1)
            )
            .opacity(configuration.isPressed ? 0.8 : 1.0)
    }
}
