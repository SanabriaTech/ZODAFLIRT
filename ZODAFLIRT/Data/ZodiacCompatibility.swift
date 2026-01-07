//
//  ZodiacCompatibility.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import Foundation

struct ZodiacCompatibility {

    // MARK: - Compatibility Levels

    enum CompatibilityLevel: Int {
        case soulmate = 5      // Exceptional match
        case highlyCompatible = 4
        case compatible = 3
        case neutral = 2
        case challenging = 1

        var description: String {
            switch self {
            case .soulmate: return "Soulmate Connection"
            case .highlyCompatible: return "Highly Compatible"
            case .compatible: return "Compatible"
            case .neutral: return "Neutral"
            case .challenging: return "Challenging"
            }
        }
    }

    // MARK: - Get Compatibility Score

    static func getCompatibility(between sign1: ZodiacSign, and sign2: ZodiacSign) -> CompatibilityLevel {
        let pair = Set([sign1, sign2])

        // Soulmate matches (5)
        let soulmateMatches: [Set<ZodiacSign>] = [
            [.aries, .leo],
            [.taurus, .cancer],
            [.gemini, .libra],
            [.cancer, .scorpio],
            [.leo, .sagittarius],
            [.virgo, .taurus],
            [.libra, .gemini],
            [.scorpio, .pisces],
            [.sagittarius, .aries],
            [.capricorn, .virgo],
            [.aquarius, .gemini],
            [.pisces, .cancer]
        ]

        if soulmateMatches.contains(pair) { return .soulmate }

        // Highly compatible matches (4)
        let highMatches: [Set<ZodiacSign>] = [
            [.aries, .sagittarius],
            [.aries, .aquarius],
            [.taurus, .virgo],
            [.taurus, .pisces],
            [.gemini, .aquarius],
            [.gemini, .aries],
            [.cancer, .pisces],
            [.cancer, .taurus],
            [.leo, .aries],
            [.leo, .libra],
            [.virgo, .capricorn],
            [.virgo, .cancer],
            [.libra, .leo],
            [.libra, .sagittarius],
            [.scorpio, .cancer],
            [.scorpio, .virgo],
            [.sagittarius, .aquarius],
            [.sagittarius, .libra],
            [.capricorn, .taurus],
            [.capricorn, .scorpio],
            [.aquarius, .sagittarius],
            [.aquarius, .libra],
            [.pisces, .scorpio],
            [.pisces, .taurus]
        ]

        if highMatches.contains(pair) { return .highlyCompatible }

        // Same sign - compatible with self
        if sign1 == sign2 { return .compatible }

        // Same element - generally compatible
        if sign1.element == sign2.element { return .compatible }

        // Complementary elements
        let complementary: [(String, String)] = [
            ("Fire", "Air"),
            ("Earth", "Water")
        ]

        for (elem1, elem2) in complementary {
            if (sign1.element == elem1 && sign2.element == elem2) ||
               (sign1.element == elem2 && sign2.element == elem1) {
                return .compatible
            }
        }

        // Challenging combinations
        let challengingMatches: [Set<ZodiacSign>] = [
            [.aries, .cancer],
            [.aries, .capricorn],
            [.taurus, .leo],
            [.taurus, .aquarius],
            [.gemini, .virgo],
            [.gemini, .pisces],
            [.cancer, .libra],
            [.cancer, .aries],
            [.leo, .scorpio],
            [.leo, .taurus],
            [.virgo, .sagittarius],
            [.virgo, .gemini],
            [.libra, .capricorn],
            [.libra, .cancer],
            [.scorpio, .aquarius],
            [.scorpio, .leo],
            [.sagittarius, .pisces],
            [.sagittarius, .virgo],
            [.capricorn, .aries],
            [.capricorn, .libra],
            [.aquarius, .taurus],
            [.aquarius, .scorpio],
            [.pisces, .gemini],
            [.pisces, .sagittarius]
        ]

        if challengingMatches.contains(pair) { return .challenging }

        return .neutral
    }

    // MARK: - Get Best Matches for a Sign

    static func getBestMatches(for sign: ZodiacSign) -> [ZodiacSign] {
        var matches: [(sign: ZodiacSign, score: Int)] = []

        for otherSign in ZodiacSign.allCases where otherSign != sign {
            let compatibility = getCompatibility(between: sign, and: otherSign)
            matches.append((otherSign, compatibility.rawValue))
        }

        // Sort by score descending and return top matches
        return matches
            .sorted { $0.score > $1.score }
            .prefix(3)
            .map { $0.sign }
    }

    // MARK: - Get Compatibility Teaser

    static func getCompatibilityTeaser(for sign: ZodiacSign) -> String {
        let bestMatches = getBestMatches(for: sign)
        guard let topMatch = bestMatches.first else {
            return "Your romantic journey is full of possibilities..."
        }

        let teasers: [ZodiacSign: [ZodiacSign: String]] = [
            .aries: [
                .leo: "You share an electric connection with Leo energy—both of you burn bright and love fiercely.",
                .sagittarius: "Sagittarius matches your adventurous spirit. Together, you're unstoppable.",
                .libra: "Libra's charm balances your fire. Opposites attract for a reason."
            ],
            .taurus: [
                .cancer: "Cancer's emotional depth meets your sensual nature—a match built on trust.",
                .virgo: "Virgo understands your need for stability. Together, you build something real.",
                .pisces: "Pisces brings the romance you secretly crave. Pure magic."
            ],
            .gemini: [
                .libra: "Libra matches your wit and social grace. Conversations that never end.",
                .aquarius: "Aquarius gets your unconventional mind. Freedom-loving kindred spirits.",
                .aries: "Aries brings excitement that keeps you guessing. Never a dull moment."
            ],
            .cancer: [
                .scorpio: "Scorpio's intensity meets your emotional depth. A bond that transcends words.",
                .pisces: "Pisces understands your unspoken feelings. Soul-level connection.",
                .taurus: "Taurus offers the security you crave. Home is wherever they are."
            ],
            .leo: [
                .aries: "Aries matches your passion and drive. Two flames that burn brighter together.",
                .sagittarius: "Sagittarius shares your love of adventure and celebration. Life's a party.",
                .libra: "Libra appreciates your shine. They'll always make you feel like royalty."
            ],
            .virgo: [
                .taurus: "Taurus shares your appreciation for quality and consistency. Quietly perfect.",
                .capricorn: "Capricorn respects your work ethic. You build empires together.",
                .cancer: "Cancer sees the softness beneath your precision. Deeply nurturing."
            ],
            .libra: [
                .gemini: "Gemini matches your intellectual curiosity. Endless conversations await.",
                .leo: "Leo's warmth draws you in. They make you feel endlessly adored.",
                .sagittarius: "Sagittarius expands your world. Adventure and harmony combined."
            ],
            .scorpio: [
                .pisces: "Pisces meets you in the depths. A connection that feels fated.",
                .cancer: "Cancer offers the emotional safety you need to fully open up.",
                .virgo: "Virgo's loyalty and attention to detail earn your trust slowly but completely."
            ],
            .sagittarius: [
                .aries: "Aries matches your fire and fearlessness. Partners in adventure.",
                .leo: "Leo brings the drama and passion you love. Life becomes a grand story.",
                .aquarius: "Aquarius shares your vision for something bigger. Freedom together."
            ],
            .capricorn: [
                .virgo: "Virgo understands your ambition without judging it. Practical soulmates.",
                .taurus: "Taurus shares your values. You build something lasting together.",
                .scorpio: "Scorpio's intensity intrigues you. Beneath the surface, deep respect."
            ],
            .aquarius: [
                .gemini: "Gemini speaks your language. Intellectual connection that feels rare.",
                .sagittarius: "Sagittarius shares your need for freedom and exploration.",
                .libra: "Libra brings social grace and balance to your unconventional ways."
            ],
            .pisces: [
                .scorpio: "Scorpio protects your sensitive heart. A bond others don't understand.",
                .cancer: "Cancer creates the emotional home you've always dreamed of.",
                .taurus: "Taurus grounds your dreams in reality—without crushing them."
            ]
        ]

        if let signTeasers = teasers[sign], let teaser = signTeasers[topMatch] {
            return teaser
        }

        // Fallback generic teaser
        return "You often connect strongly with \(topMatch.name) energy—there's natural chemistry worth exploring."
    }
}
