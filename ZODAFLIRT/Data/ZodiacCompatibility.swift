//
//  ZodiacCompatibility.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import Foundation

struct ZodiacCompatibility {

    // MARK: - Get Best Matches with Details

    static func getBestMatches(for sign: ZodiacSign) -> [CompatibilityMatch] {
        switch sign {
        case .aries:
            return [
                CompatibilityMatch(
                    sign: .leo,
                    rank: 1,
                    headline: "Fire meets fire",
                    explanation: "Leo matches your energy and ambition. Together you're a power couple—bold, passionate, and always pushing each other forward. They admire your drive; you love their confidence."
                ),
                CompatibilityMatch(
                    sign: .sagittarius,
                    rank: 2,
                    headline: "Adventure partners",
                    explanation: "Sagittarius keeps up with your spontaneity and never tries to hold you back. You both crave excitement, freedom, and a partner who says 'yes' to life."
                ),
                CompatibilityMatch(
                    sign: .gemini,
                    rank: 3,
                    headline: "Never a dull moment",
                    explanation: "Gemini's quick wit and playfulness keep you on your toes. They challenge you mentally and match your restless energy with their own."
                )
            ]

        case .taurus:
            return [
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 1,
                    headline: "Built for comfort",
                    explanation: "Cancer understands your need for security and emotional depth. Together you create a home that feels like a sanctuary—warm, stable, and deeply nurturing."
                ),
                CompatibilityMatch(
                    sign: .virgo,
                    rank: 2,
                    headline: "Quiet understanding",
                    explanation: "Virgo shares your appreciation for quality and consistency. You both show love through actions, not just words, creating a relationship built on mutual respect."
                ),
                CompatibilityMatch(
                    sign: .capricorn,
                    rank: 3,
                    headline: "Long-term vision",
                    explanation: "Capricorn matches your ambition and patience. You're both building something real—no games, no drama, just steady progress toward shared goals."
                )
            ]

        case .gemini:
            return [
                CompatibilityMatch(
                    sign: .libra,
                    rank: 1,
                    headline: "Intellectual equals",
                    explanation: "Libra keeps the conversation flowing and the romance alive. You both thrive on mental stimulation, social connection, and keeping things light and beautiful."
                ),
                CompatibilityMatch(
                    sign: .aquarius,
                    rank: 2,
                    headline: "Unconventional match",
                    explanation: "Aquarius gets your need for freedom and mental space. Together you explore ideas others find strange and never bore each other."
                ),
                CompatibilityMatch(
                    sign: .aries,
                    rank: 3,
                    headline: "Spark and speed",
                    explanation: "Aries brings the fire you sometimes lack. Their decisiveness balances your indecision, and their boldness pushes you out of your head and into action."
                )
            ]

        case .cancer:
            return [
                CompatibilityMatch(
                    sign: .scorpio,
                    rank: 1,
                    headline: "Soul-deep bond",
                    explanation: "Scorpio protects your sensitive heart like no one else. They understand your emotional depths and offer the loyalty and intensity you crave."
                ),
                CompatibilityMatch(
                    sign: .pisces,
                    rank: 2,
                    headline: "Emotional fluency",
                    explanation: "Pisces speaks your emotional language fluently. Together you create a relationship that feels like coming home—intuitive, tender, and deeply connected."
                ),
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 3,
                    headline: "Steady devotion",
                    explanation: "Taurus offers the stability and consistency your heart needs. They show up, stay present, and build the secure foundation you've always wanted."
                )
            ]

        case .leo:
            return [
                CompatibilityMatch(
                    sign: .aries,
                    rank: 1,
                    headline: "Mutual admiration",
                    explanation: "Aries sees your greatness and isn't intimidated by it. You inspire each other to be bolder, braver, and more unapologetically yourselves."
                ),
                CompatibilityMatch(
                    sign: .sagittarius,
                    rank: 2,
                    headline: "Grand adventures",
                    explanation: "Sagittarius shares your love of life and expansive vision. Together you dream big and actually make it happen—with plenty of fun along the way."
                ),
                CompatibilityMatch(
                    sign: .libra,
                    rank: 3,
                    headline: "Beauty and warmth",
                    explanation: "Libra appreciates your flair and matches it with their own elegance. You both value romance, aesthetics, and being treated like royalty."
                )
            ]

        case .virgo:
            return [
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 1,
                    headline: "Grounded together",
                    explanation: "Taurus shares your practical approach to love. You both value quality, consistency, and showing love through thoughtful actions rather than grand gestures."
                ),
                CompatibilityMatch(
                    sign: .capricorn,
                    rank: 2,
                    headline: "Shared standards",
                    explanation: "Capricorn respects your high standards and matches them. Together you build something real—a relationship based on mutual respect and shared ambition."
                ),
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 3,
                    headline: "Nurturing balance",
                    explanation: "Cancer softens your critical edge with genuine warmth. They appreciate your helpfulness while teaching you to receive care, not just give it."
                )
            ]

        case .libra:
            return [
                CompatibilityMatch(
                    sign: .gemini,
                    rank: 1,
                    headline: "Perfect conversation",
                    explanation: "Gemini stimulates your mind and keeps romance playful. You never run out of things to discuss, debate, or discover together."
                ),
                CompatibilityMatch(
                    sign: .leo,
                    rank: 2,
                    headline: "Glamour and heart",
                    explanation: "Leo brings the warmth and confidence you admire. Together you create a beautiful life filled with romance, appreciation, and mutual adoration."
                ),
                CompatibilityMatch(
                    sign: .aquarius,
                    rank: 3,
                    headline: "Idealistic partners",
                    explanation: "Aquarius shares your vision for a better world. You connect on ideas, values, and a shared belief that relationships should elevate both people."
                )
            ]

        case .scorpio:
            return [
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 1,
                    headline: "Unspoken understanding",
                    explanation: "Cancer meets your emotional intensity without flinching. They offer the loyalty and depth you demand, creating a bond that feels unbreakable."
                ),
                CompatibilityMatch(
                    sign: .pisces,
                    rank: 2,
                    headline: "Mystical connection",
                    explanation: "Pisces matches your depth and adds a dreamy softness. Together you explore emotional and spiritual territories others never reach."
                ),
                CompatibilityMatch(
                    sign: .capricorn,
                    rank: 3,
                    headline: "Power and ambition",
                    explanation: "Capricorn respects your intensity and matches it with their own quiet power. You both play the long game and value loyalty above all."
                )
            ]

        case .sagittarius:
            return [
                CompatibilityMatch(
                    sign: .aries,
                    rank: 1,
                    headline: "Unstoppable energy",
                    explanation: "Aries matches your fire and never asks you to slow down. Together you're an adventure-seeking duo who makes life feel like one big exploration."
                ),
                CompatibilityMatch(
                    sign: .leo,
                    rank: 2,
                    headline: "Optimism amplified",
                    explanation: "Leo shares your positive outlook and love of life. You inspire each other to dream bigger and celebrate every victory along the way."
                ),
                CompatibilityMatch(
                    sign: .aquarius,
                    rank: 3,
                    headline: "Freedom-loving pair",
                    explanation: "Aquarius gives you the space you need while keeping things intellectually stimulating. Neither of you tries to cage the other."
                )
            ]

        case .capricorn:
            return [
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 1,
                    headline: "Built to last",
                    explanation: "Taurus understands your long-term vision and patient approach. Together you build something substantial—a relationship with real foundations."
                ),
                CompatibilityMatch(
                    sign: .virgo,
                    rank: 2,
                    headline: "Mutual respect",
                    explanation: "Virgo appreciates your ambition and matches it with their own dedication. You both value competence, reliability, and showing up consistently."
                ),
                CompatibilityMatch(
                    sign: .scorpio,
                    rank: 3,
                    headline: "Hidden depths",
                    explanation: "Scorpio sees past your reserved exterior to the passion underneath. They match your loyalty and understand that trust is earned, not given."
                )
            ]

        case .aquarius:
            return [
                CompatibilityMatch(
                    sign: .gemini,
                    rank: 1,
                    headline: "Mental fireworks",
                    explanation: "Gemini keeps your mind engaged and never tries to pin you down. You share ideas, explore possibilities, and give each other room to breathe."
                ),
                CompatibilityMatch(
                    sign: .libra,
                    rank: 2,
                    headline: "Harmonious ideals",
                    explanation: "Libra shares your interest in ideas and social progress. Together you envision a better future and actually work toward making it real."
                ),
                CompatibilityMatch(
                    sign: .sagittarius,
                    rank: 3,
                    headline: "Independent spirits",
                    explanation: "Sagittarius respects your need for freedom and matches it with their own. You're two independent people who choose to be together."
                )
            ]

        case .pisces:
            return [
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 1,
                    headline: "Emotional home",
                    explanation: "Cancer creates the safe emotional harbor you've always needed. They understand your sensitivity and protect it without making you feel weak."
                ),
                CompatibilityMatch(
                    sign: .scorpio,
                    rank: 2,
                    headline: "Transformative love",
                    explanation: "Scorpio matches your emotional depth and adds protective strength. Together you create a bond that feels fated—intense, healing, and profound."
                ),
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 3,
                    headline: "Dreams meet reality",
                    explanation: "Taurus grounds your dreams without crushing them. They offer the stability you need while appreciating your creative, romantic spirit."
                )
            ]
        }
    }

    // MARK: - Compatibility Level (existing functionality)

    enum CompatibilityLevel: String {
        case soulmate = "Soulmate"
        case highlyCompatible = "Highly Compatible"
        case compatible = "Compatible"
        case neutral = "Neutral"
        case challenging = "Challenging"
    }

    static func getCompatibility(between sign1: ZodiacSign, and sign2: ZodiacSign) -> CompatibilityLevel {
        let matches = getBestMatches(for: sign1)
        if matches.first?.sign == sign2 {
            return .soulmate
        } else if matches.dropFirst().first?.sign == sign2 {
            return .highlyCompatible
        } else if matches.last?.sign == sign2 {
            return .compatible
        }
        return .neutral
    }

    static func getCompatibilityTeaser(for sign: ZodiacSign) -> String {
        let matches = getBestMatches(for: sign)
        guard let topMatch = matches.first else { return "" }
        return "Your #1 match: \(topMatch.sign.name) — \(topMatch.headline.lowercased())."
    }
}
