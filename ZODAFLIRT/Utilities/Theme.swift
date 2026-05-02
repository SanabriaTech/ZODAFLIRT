//
//  Theme.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct AppTheme {

    // MARK: - Backgrounds

    /// Soft cream off-white — primary background (light mode / new visual system)
    static let backgroundPrimary = Color(hex: "F7F4EE")

    /// Lighter cream — secondary surface
    static let backgroundSecondary = Color(hex: "FBF9F4")

    /// Deep navy — for dark-mode surfaces
    static let backgroundDark = Color(hex: "0A1628")

    /// Lighter navy — secondary dark surface
    static let backgroundDarkSecondary = Color(hex: "1A1F2E")

    /// Legacy alias — main app background. Now points at the new cream primary.
    static let background = backgroundPrimary

    // MARK: - Background Gradient (used as main app background)

    static var backgroundGradient: LinearGradient {
        LinearGradient(
            colors: [
                Color(hex: "F7F4EE"),    // Cream top
                Color(hex: "FBF9F4"),    // Lighter middle
                Color(hex: "F4EBDA")     // Subtle warm amber bottom
            ],
            startPoint: .top,
            endPoint: .bottom
        )
    }

    /// Dark mode equivalent — for later phases that respect system color scheme.
    static var backgroundGradientDark: LinearGradient {
        LinearGradient(
            colors: [
                Color(hex: "0A1628"),    // Deep navy top
                Color(hex: "1A1F2E"),    // Lighter middle
                Color(hex: "0D2A2F")     // Teal-tinted bottom
            ],
            startPoint: .top,
            endPoint: .bottom
        )
    }

    // MARK: - Brand Colors

    /// Primary teal — brand accent
    static let teal = Color(hex: "0D7C8C")
    static let tealLight = Color(hex: "1A8FA0")
    static let tealDark = Color(hex: "0A6573")

    /// Warm amber accents
    static let amber = Color(hex: "E6A85C")
    static let amberLight = Color(hex: "F2C078")

    /// Legacy aliases — kept so existing screens compile until they're migrated.
    static let accent = teal
    static let accentLight = tealLight
    static let accentMuted = teal.opacity(0.7)

    // MARK: - Text Colors

    /// Charcoal — primary text on light surfaces
    static let textPrimary = Color(hex: "1A1F2E")
    /// Medium gray — secondary text
    static let textSecondary = Color(hex: "4A5568")
    /// Light gray — muted text
    static let textMuted = Color(hex: "8A93A6")
    /// Soft white — text on dark backgrounds
    static let textOnDark = Color(hex: "F5F0E8")

    // MARK: - Cards & Surfaces (light)

    static let cardBackground = Color.white
    static let cardBorder = Color(hex: "E8EAEF")
    static let cardShadow = Color(hex: "1A1F2E").opacity(0.08)

    // Legacy elevated tokens — kept for compatibility, point at the new defaults.
    static let cardBackgroundElevated = Color.white
    static let cardBorderElevated = Color(hex: "D8DBE2")

    // MARK: - Cards & Surfaces (dark)

    static let cardBackgroundDark = Color(hex: "1A1F2E")
    static let cardBorderDark = Color(hex: "2A2F3E")

    // MARK: - Buttons

    static let buttonPrimaryBackground = teal
    static let buttonPrimaryBorder = teal
    static let buttonSecondaryBackground = Color.white
    static let buttonSecondaryBorder = Color(hex: "E8EAEF")

    // MARK: - Fonts

    static func serifFont(size: CGFloat) -> Font {
        .custom("Didot", size: size)
    }

    static func serifFontMedium(size: CGFloat) -> Font {
        .custom("Didot-Bold", size: size)
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

// MARK: - Color hex initializer

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
