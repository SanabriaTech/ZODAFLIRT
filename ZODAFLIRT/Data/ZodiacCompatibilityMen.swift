//
//  ZodiacCompatibilityMen.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//
//  Men-targeted best-connection content for all 12 signs.
//  Selects between hetero (Woman → Man) and gay (Man → Man) variants
//  based on GuidanceContext.

import Foundation

struct ZodiacCompatibilityMen {

    static func getBestMatches(for sign: ZodiacSign, context: GuidanceContext) -> [CompatibilityMatch] {
        let isHetero = context == .heteroWomanToMan

        switch sign {
        case .aries:
            return [
                CompatibilityMatch(
                    sign: .leo,
                    rank: 1,
                    headline: "Power couple energy",
                    explanation: isHetero
                        ? "Leo man matches your fire and brings the warmth and confidence to make it last. The two of you create a bold, magnetic dynamic — equals in passion and ambition."
                        : "Leo brings warmth and confidence to match your fire. Together you're magnetic, dramatic, and unstoppable."
                ),
                CompatibilityMatch(
                    sign: .sagittarius,
                    rank: 2,
                    headline: "Adventure partners",
                    explanation: isHetero
                        ? "Sagittarius man brings independence and adventure that match yours. He won't slow you down or try to cage you. Together you live like a power duo — separate but connected."
                        : "Sagittarius matches your independence and wanderlust. Neither of you wants to cage the other."
                ),
                CompatibilityMatch(
                    sign: .gemini,
                    rank: 3,
                    headline: "Mental sparring",
                    explanation: isHetero
                        ? "Gemini man keeps you on your toes intellectually. He challenges your thinking and refuses to be predictable."
                        : "Gemini's quick mind complements your fire. He'll challenge you and never let things stagnate."
                )
            ]

        case .taurus:
            return [
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 1,
                    headline: "Built for home",
                    explanation: isHetero
                        ? "Cancer man brings emotional depth that complements your sensual nature. Together you build a sanctuary — warm, stable, deeply nurturing."
                        : "Cancer matches your need for security and depth. Together you create a home that feels safe and rooted."
                ),
                CompatibilityMatch(
                    sign: .virgo,
                    rank: 2,
                    headline: "Quiet devotion",
                    explanation: isHetero
                        ? "Virgo man appreciates your patience and shares your love of quality. He's not flashy, but he's deeply loyal."
                        : "Virgo shares your appreciation for quality and slow-built love."
                ),
                CompatibilityMatch(
                    sign: .capricorn,
                    rank: 3,
                    headline: "Long-term vision",
                    explanation: isHetero
                        ? "Capricorn man is building something serious. He's not playing games. Together you create partnership grounded in shared ambition."
                        : "Capricorn matches your patience and long-term thinking. Together you build a partnership designed to last."
                )
            ]

        case .gemini:
            return [
                CompatibilityMatch(
                    sign: .libra,
                    rank: 1,
                    headline: "Effortless flow",
                    explanation: isHetero
                        ? "Libra man matches your wit and adds romance and grace. The two of you are socially magnetic and intellectually alive."
                        : "Libra's diplomatic charm and intellectual engagement complement your quickness."
                ),
                CompatibilityMatch(
                    sign: .aquarius,
                    rank: 2,
                    headline: "Mind meets mind",
                    explanation: isHetero
                        ? "Aquarius man is just as curious and unconventional as you are. He gives you the space you need."
                        : "Aquarius shares your love of ideas and need for space."
                ),
                CompatibilityMatch(
                    sign: .aries,
                    rank: 3,
                    headline: "Spark and play",
                    explanation: isHetero
                        ? "Aries man brings fire that complements your air. Bold where you're playful, decisive where you're variable."
                        : "Aries brings boldness that grounds your variability."
                )
            ]

        case .cancer:
            return [
                CompatibilityMatch(
                    sign: .scorpio,
                    rank: 1,
                    headline: "Soul-deep bond",
                    explanation: isHetero
                        ? "Scorpio man matches your emotional depth and offers fierce loyalty. The connection feels almost fated."
                        : "Scorpio's depth and loyalty meet your emotional intensity. Together you create an unbreakable bond."
                ),
                CompatibilityMatch(
                    sign: .pisces,
                    rank: 2,
                    headline: "Emotional fluency",
                    explanation: isHetero
                        ? "Pisces man speaks your emotional language fluently. You understand each other intuitively."
                        : "Pisces matches your intuition. Together you build a relationship that feels like coming home."
                ),
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 3,
                    headline: "Steady devotion",
                    explanation: isHetero
                        ? "Taurus man offers the steadiness your sensitive heart needs. He shows up consistently."
                        : "Taurus brings consistency and groundedness your heart craves."
                )
            ]

        case .leo:
            return [
                CompatibilityMatch(
                    sign: .aries,
                    rank: 1,
                    headline: "Fire meets fire",
                    explanation: isHetero
                        ? "Aries man matches your boldness. The two of you push each other higher — competitive, passionate, fully alive."
                        : "Aries shares your fire and ambition. Together you're a magnetic, unstoppable force."
                ),
                CompatibilityMatch(
                    sign: .sagittarius,
                    rank: 2,
                    headline: "Big-life energy",
                    explanation: isHetero
                        ? "Sagittarius man shares your love of adventure. He'll be your travel partner, your hype man."
                        : "Sagittarius brings adventure and optimism that match your warmth."
                ),
                CompatibilityMatch(
                    sign: .libra,
                    rank: 3,
                    headline: "Beauty and warmth",
                    explanation: isHetero
                        ? "Libra man appreciates your dramatic flair and matches it with elegance."
                        : "Libra's grace matches your love of beauty."
                )
            ]

        case .virgo:
            return [
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 1,
                    headline: "Grounded together",
                    explanation: isHetero
                        ? "Taurus man shares your practical love language and appreciation for quality."
                        : "Taurus matches your appreciation for quality and consistency."
                ),
                CompatibilityMatch(
                    sign: .capricorn,
                    rank: 2,
                    headline: "High standards aligned",
                    explanation: isHetero
                        ? "Capricorn man has the same high standards. He's serious about life, work, and love."
                        : "Capricorn shares your serious approach to relationships."
                ),
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 3,
                    headline: "Nurturing balance",
                    explanation: isHetero
                        ? "Cancer man softens your critical edge with genuine warmth."
                        : "Cancer's nurturing energy balances your precision."
                )
            ]

        case .libra:
            return [
                CompatibilityMatch(
                    sign: .gemini,
                    rank: 1,
                    headline: "Effortless conversation",
                    explanation: isHetero
                        ? "Gemini man matches your social grace and intellectual curiosity. You never run out of things to talk about."
                        : "Gemini brings mental sparkle and playfulness that complement your romance."
                ),
                CompatibilityMatch(
                    sign: .leo,
                    rank: 2,
                    headline: "Glamour and grace",
                    explanation: isHetero
                        ? "Leo man brings the warmth and confidence you adore. Together you create an elegant love story."
                        : "Leo's warmth and dramatic flair match your romance."
                ),
                CompatibilityMatch(
                    sign: .aquarius,
                    rank: 3,
                    headline: "Idealistic partners",
                    explanation: isHetero
                        ? "Aquarius man shares your vision for a fair, beautiful world."
                        : "Aquarius shares your idealism and vision."
                )
            ]

        case .scorpio:
            return [
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 1,
                    headline: "Unspoken understanding",
                    explanation: isHetero
                        ? "Cancer man meets your intensity with depth and tenderness. He gives you the safety to be vulnerable."
                        : "Cancer's emotional fluency matches your depth."
                ),
                CompatibilityMatch(
                    sign: .pisces,
                    rank: 2,
                    headline: "Mystical merging",
                    explanation: isHetero
                        ? "Pisces man matches your depth and adds dreamy softness. Together you reach territory others can't."
                        : "Pisces brings emotional depth and intuition that match yours."
                ),
                CompatibilityMatch(
                    sign: .capricorn,
                    rank: 3,
                    headline: "Power and loyalty",
                    explanation: isHetero
                        ? "Capricorn man respects your intensity and matches it with quiet strength."
                        : "Capricorn's quiet power and loyalty match your intensity."
                )
            ]

        case .sagittarius:
            return [
                CompatibilityMatch(
                    sign: .aries,
                    rank: 1,
                    headline: "Unstoppable adventure",
                    explanation: isHetero
                        ? "Aries man matches your fire and refuses to slow you down. Together you're a duo of energy and motion."
                        : "Aries matches your independent spirit and adventurous heart."
                ),
                CompatibilityMatch(
                    sign: .leo,
                    rank: 2,
                    headline: "Optimism amplified",
                    explanation: isHetero
                        ? "Leo man shares your love of life and big-energy approach."
                        : "Leo's warmth and ambition match your optimism."
                ),
                CompatibilityMatch(
                    sign: .aquarius,
                    rank: 3,
                    headline: "Free and free",
                    explanation: isHetero
                        ? "Aquarius man gives you the space you need. Neither of you tries to cage the other."
                        : "Aquarius matches your need for freedom and intellectual stimulation."
                )
            ]

        case .capricorn:
            return [
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 1,
                    headline: "Built to last",
                    explanation: isHetero
                        ? "Taurus man shares your patient, long-term thinking. Together you build something substantial."
                        : "Taurus matches your steadiness and long-term vision."
                ),
                CompatibilityMatch(
                    sign: .virgo,
                    rank: 2,
                    headline: "Mutual respect",
                    explanation: isHetero
                        ? "Virgo man matches your high standards. The two of you respect each other deeply."
                        : "Virgo's precision and ambition match yours."
                ),
                CompatibilityMatch(
                    sign: .scorpio,
                    rank: 3,
                    headline: "Hidden depths",
                    explanation: isHetero
                        ? "Scorpio man sees past your reserved exterior to the passion underneath."
                        : "Scorpio sees the depth beneath your composure."
                )
            ]

        case .aquarius:
            return [
                CompatibilityMatch(
                    sign: .gemini,
                    rank: 1,
                    headline: "Mental fireworks",
                    explanation: isHetero
                        ? "Gemini man matches your intellectual energy and gives you freedom."
                        : "Gemini's quickness matches your originality."
                ),
                CompatibilityMatch(
                    sign: .libra,
                    rank: 2,
                    headline: "Idealistic harmony",
                    explanation: isHetero
                        ? "Libra man shares your vision for a better world."
                        : "Libra's idealism complements your originality."
                ),
                CompatibilityMatch(
                    sign: .sagittarius,
                    rank: 3,
                    headline: "Free spirits aligned",
                    explanation: isHetero
                        ? "Sagittarius man respects your independence and brings adventure."
                        : "Sagittarius matches your independence and intellectual energy."
                )
            ]

        case .pisces:
            return [
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 1,
                    headline: "Emotional sanctuary",
                    explanation: isHetero
                        ? "Cancer man creates the safe emotional space your tender heart needs."
                        : "Cancer's nurturing energy matches your romantic depth."
                ),
                CompatibilityMatch(
                    sign: .scorpio,
                    rank: 2,
                    headline: "Transformative love",
                    explanation: isHetero
                        ? "Scorpio man matches your depth and adds protective strength."
                        : "Scorpio's depth and loyalty match your romantic soul."
                ),
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 3,
                    headline: "Dreams meet earth",
                    explanation: isHetero
                        ? "Taurus man grounds your dreams without crushing them."
                        : "Taurus brings the stability that grounds your dreaminess."
                )
            ]
        }
    }
}
