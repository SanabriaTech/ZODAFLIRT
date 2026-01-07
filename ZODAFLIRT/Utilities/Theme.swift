//
//  Theme.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct AppTheme {
    // MARK: - Colors

    static let background = Color.black
    static let cardBackground = Color.white.opacity(0.08)
    static let cardBorder = Color.white.opacity(0.15)

    static let accent = Color(red: 0.79, green: 0.66, blue: 0.42) // Rose-gold #C9A86C
    static let accentLight = Color(red: 0.85, green: 0.75, blue: 0.55)

    static let textPrimary = Color.white
    static let textSecondary = Color.white.opacity(0.7)
    static let textMuted = Color.white.opacity(0.5)

    // MARK: - Fonts

    static func serifFont(size: CGFloat) -> Font {
        .custom("Georgia", size: size) // Fallback serif, can swap later
    }

    static func sansFont(size: CGFloat) -> Font {
        .system(size: size, weight: .regular)
    }

    static func sansFontMedium(size: CGFloat) -> Font {
        .system(size: size, weight: .medium)
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
