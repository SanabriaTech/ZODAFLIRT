//
//  ZodiacCompatibilityWomen.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//
//  Women-targeted best-connection content for all 12 signs.
//  Selects between hetero (Man → Woman) and lesbian (Woman → Woman) variants
//  based on GuidanceContext.

import Foundation

struct ZodiacCompatibilityWomen {

    static func getBestMatches(for sign: ZodiacSign, context: GuidanceContext) -> [CompatibilityMatch] {
        let isHetero = context == .heteroManToWoman

        switch sign {
        case .aries:
            return [
                CompatibilityMatch(
                    sign: .leo,
                    rank: 1,
                    headline: "Power couple energy",
                    explanation: isHetero
                        ? "Leo woman matches your fire and isn't intimidated by your boldness. She'll push back when you need it and worship you when she wants to. The chemistry is electric and the loyalty is fierce."
                        : "Leo brings the warmth and confidence to match your fire. The two of you create a magnetic, dramatic dynamic — both bold, both unafraid of the spotlight."
                ),
                CompatibilityMatch(
                    sign: .sagittarius,
                    rank: 2,
                    headline: "Adventure partners",
                    explanation: isHetero
                        ? "Sagittarius woman has her own life, her own goals, and her own adventures. She won't be possessive of yours. The two of you live like a power duo — separate but connected."
                        : "Sagittarius brings independence and wanderlust that match yours. Neither of you wants to cage the other. Together you build a life full of motion and freedom."
                ),
                CompatibilityMatch(
                    sign: .gemini,
                    rank: 3,
                    headline: "Mental sparring",
                    explanation: isHetero
                        ? "Gemini woman keeps you on your toes intellectually. She challenges your thinking and refuses to be predictable. You'll never get bored."
                        : "Gemini's quick mind and playful spirit complement your fire. She'll challenge you, surprise you, and never let things get stagnant."
                )
            ]

        case .taurus:
            return [
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 1,
                    headline: "Built for home",
                    explanation: isHetero
                        ? "Cancer woman brings the emotional depth that complements your sensual nature. Together you build a life that feels like a sanctuary — warm, stable, and deeply nurturing."
                        : "Cancer matches your need for security and emotional depth. Together you create a home that feels safe, nurturing, and beautifully rooted."
                ),
                CompatibilityMatch(
                    sign: .virgo,
                    rank: 2,
                    headline: "Quiet devotion",
                    explanation: isHetero
                        ? "Virgo woman appreciates your patience and shares your love of quality. She's not flashy, but she's deeply loyal and intentional. The two of you build something real."
                        : "Virgo shares your appreciation for quality, consistency, and slow-built love. The connection grows steadily and deeply over time."
                ),
                CompatibilityMatch(
                    sign: .capricorn,
                    rank: 3,
                    headline: "Long-term vision",
                    explanation: isHetero
                        ? "Capricorn woman is building something serious, just like you. She's not playing games. Together you create a partnership grounded in shared ambition and earthy love."
                        : "Capricorn matches your patience and long-term thinking. Together you build a partnership designed to last, with shared values at its core."
                )
            ]

        case .gemini:
            return [
                CompatibilityMatch(
                    sign: .libra,
                    rank: 1,
                    headline: "Effortless flow",
                    explanation: isHetero
                        ? "Libra woman matches your wit and adds romance and grace. She loves a great conversation as much as you do. Together you're socially magnetic and intellectually alive."
                        : "Libra's diplomatic charm and intellectual engagement complement your quickness. The two of you create a beautiful, balanced partnership."
                ),
                CompatibilityMatch(
                    sign: .aquarius,
                    rank: 2,
                    headline: "Mind meets mind",
                    explanation: isHetero
                        ? "Aquarius woman is just as curious and unconventional as you are. She'll never bore you, and she gives you the space you need. The intellectual chemistry is rare."
                        : "Aquarius shares your love of ideas and your need for space. Together you build an unconventional, idea-driven relationship that breaks every rule."
                ),
                CompatibilityMatch(
                    sign: .aries,
                    rank: 3,
                    headline: "Spark and play",
                    explanation: isHetero
                        ? "Aries woman brings fire that complements your air. She's bold where you're playful, decisive where you're variable. The dynamic is electric."
                        : "Aries brings boldness and decisiveness that ground your variability. The chemistry is fast, fun, and full of motion."
                )
            ]

        case .cancer:
            return [
                CompatibilityMatch(
                    sign: .scorpio,
                    rank: 1,
                    headline: "Soul-deep bond",
                    explanation: isHetero
                        ? "Scorpio woman matches your emotional depth and offers the loyalty you need. She'll protect your heart fiercely. The connection feels almost fated."
                        : "Scorpio's depth and loyalty meet your emotional intensity. Together you create a bond that feels written in the stars — protected, deep, unbreakable."
                ),
                CompatibilityMatch(
                    sign: .pisces,
                    rank: 2,
                    headline: "Emotional fluency",
                    explanation: isHetero
                        ? "Pisces woman speaks your emotional language fluently. The two of you don't need words for everything — you understand each other intuitively."
                        : "Pisces matches your intuition and emotional fluency. Together you build a relationship that feels like coming home."
                ),
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 3,
                    headline: "Steady devotion",
                    explanation: isHetero
                        ? "Taurus woman offers the steadiness your sensitive heart needs. She shows up consistently, builds slowly, and loves deeply."
                        : "Taurus brings the consistency and groundedness your heart craves. She's the secure foundation you've always needed."
                )
            ]

        case .leo:
            return [
                CompatibilityMatch(
                    sign: .aries,
                    rank: 1,
                    headline: "Fire meets fire",
                    explanation: isHetero
                        ? "Aries woman matches your boldness and isn't intimidated by your shine. The two of you push each other higher — competitive, passionate, fully alive."
                        : "Aries shares your fire and ambition. Together you're a magnetic, unstoppable force — bold, passionate, and unapologetically yourselves."
                ),
                CompatibilityMatch(
                    sign: .sagittarius,
                    rank: 2,
                    headline: "Big-life energy",
                    explanation: isHetero
                        ? "Sagittarius woman shares your love of life and adventure. She'll be your travel partner, your hype woman, your fellow optimist."
                        : "Sagittarius brings adventure and optimism that match your warmth. Together you live big, dream big, and celebrate everything."
                ),
                CompatibilityMatch(
                    sign: .libra,
                    rank: 3,
                    headline: "Beauty and warmth",
                    explanation: isHetero
                        ? "Libra woman appreciates your dramatic flair and matches it with elegance. The two of you create a relationship that's romantic, social, and beautifully aesthetic."
                        : "Libra's grace and aesthetic sensibility match your love of beauty. Together you create a relationship that feels like a love story."
                )
            ]

        case .virgo:
            return [
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 1,
                    headline: "Grounded together",
                    explanation: isHetero
                        ? "Taurus woman shares your practical love language and your appreciation for quality. The two of you build something stable, sensual, and real."
                        : "Taurus matches your appreciation for quality and consistency. Together you create a grounded, beautiful, sensual partnership."
                ),
                CompatibilityMatch(
                    sign: .capricorn,
                    rank: 2,
                    headline: "High standards aligned",
                    explanation: isHetero
                        ? "Capricorn woman has the same high standards you do. She's serious about life, work, and love. Together you build something that lasts."
                        : "Capricorn shares your high standards and serious approach to relationships. The connection is steady, ambitious, and built to last."
                ),
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 3,
                    headline: "Nurturing balance",
                    explanation: isHetero
                        ? "Cancer woman softens your critical edge with genuine warmth. She appreciates your helpfulness and helps you receive love, not just give it."
                        : "Cancer's nurturing energy balances your precision. She teaches you to soften, to receive, to feel."
                )
            ]

        case .libra:
            return [
                CompatibilityMatch(
                    sign: .gemini,
                    rank: 1,
                    headline: "Effortless conversation",
                    explanation: isHetero
                        ? "Gemini woman matches your social grace and intellectual curiosity. The two of you never run out of things to talk about."
                        : "Gemini brings the mental sparkle and playfulness that complement your romance. Together you're socially magnetic and endlessly engaging."
                ),
                CompatibilityMatch(
                    sign: .leo,
                    rank: 2,
                    headline: "Glamour and grace",
                    explanation: isHetero
                        ? "Leo woman brings the warmth and confidence you adore. Together you create a relationship that feels like a beautiful, elegant love story."
                        : "Leo's warmth and dramatic flair match your romance. Together you create a relationship full of glamour, generosity, and adoration."
                ),
                CompatibilityMatch(
                    sign: .aquarius,
                    rank: 3,
                    headline: "Idealistic partners",
                    explanation: isHetero
                        ? "Aquarius woman shares your vision for a beautiful, fair world. Together you build a partnership grounded in shared values and ideas."
                        : "Aquarius shares your idealism and vision. Together you create a partnership that elevates both of you."
                )
            ]

        case .scorpio:
            return [
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 1,
                    headline: "Unspoken understanding",
                    explanation: isHetero
                        ? "Cancer woman meets your intensity with depth and tenderness. She gives you the safety to be vulnerable. The bond feels unbreakable."
                        : "Cancer's emotional fluency matches your depth. Together you create an intuitive, protective bond that needs no explanation."
                ),
                CompatibilityMatch(
                    sign: .pisces,
                    rank: 2,
                    headline: "Mystical merging",
                    explanation: isHetero
                        ? "Pisces woman matches your depth and adds dreamy softness. Together you explore emotional and spiritual territory others can't reach."
                        : "Pisces brings the emotional depth and intuition that match yours. The connection feels otherworldly — deep, transformative, true."
                ),
                CompatibilityMatch(
                    sign: .capricorn,
                    rank: 3,
                    headline: "Power and loyalty",
                    explanation: isHetero
                        ? "Capricorn woman respects your intensity and matches it with quiet strength. Both of you play the long game and value loyalty above all."
                        : "Capricorn's quiet power and loyalty match your intensity. Together you build something fierce, committed, and built to endure."
                )
            ]

        case .sagittarius:
            return [
                CompatibilityMatch(
                    sign: .aries,
                    rank: 1,
                    headline: "Unstoppable adventure",
                    explanation: isHetero
                        ? "Aries woman matches your fire and refuses to slow you down. Together you're a duo of energy, motion, and limitless possibility."
                        : "Aries matches your independent spirit and adventurous heart. Together you live boldly, travel often, and never stagnate."
                ),
                CompatibilityMatch(
                    sign: .leo,
                    rank: 2,
                    headline: "Optimism amplified",
                    explanation: isHetero
                        ? "Leo woman shares your love of life and big-energy approach. Together you celebrate everything and inspire each other to dream bigger."
                        : "Leo's warmth and ambition match your optimism. Together you build a life full of celebration, adventure, and confidence."
                ),
                CompatibilityMatch(
                    sign: .aquarius,
                    rank: 3,
                    headline: "Free and free",
                    explanation: isHetero
                        ? "Aquarius woman gives you the space you need and keeps things intellectually alive. Neither of you tries to cage the other."
                        : "Aquarius matches your need for freedom and intellectual stimulation. Together you build a relationship that breathes."
                )
            ]

        case .capricorn:
            return [
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 1,
                    headline: "Built to last",
                    explanation: isHetero
                        ? "Taurus woman shares your patient, long-term thinking. Together you build something substantial — real foundations, lasting love."
                        : "Taurus matches your steadiness and long-term vision. Together you create a partnership designed for the long climb."
                ),
                CompatibilityMatch(
                    sign: .virgo,
                    rank: 2,
                    headline: "Mutual respect",
                    explanation: isHetero
                        ? "Virgo woman matches your high standards and ambition. The two of you respect each other deeply — competence is sexy to you both."
                        : "Virgo's precision and ambition match yours. Together you build a partnership grounded in mutual respect and shared work ethic."
                ),
                CompatibilityMatch(
                    sign: .scorpio,
                    rank: 3,
                    headline: "Hidden depths",
                    explanation: isHetero
                        ? "Scorpio woman sees past your reserved exterior to the passion underneath. She matches your loyalty and trusts you with her depth."
                        : "Scorpio sees the depth beneath your composure. The two of you share fierce loyalty and quiet intensity."
                )
            ]

        case .aquarius:
            return [
                CompatibilityMatch(
                    sign: .gemini,
                    rank: 1,
                    headline: "Mental fireworks",
                    explanation: isHetero
                        ? "Gemini woman matches your intellectual energy and gives you the freedom you need. The conversations are endless."
                        : "Gemini's quickness and curiosity match your originality. Together you build an idea-rich, freedom-loving partnership."
                ),
                CompatibilityMatch(
                    sign: .libra,
                    rank: 2,
                    headline: "Idealistic harmony",
                    explanation: isHetero
                        ? "Libra woman shares your vision for a better world. Together you build a relationship grounded in shared values and beautiful ideas."
                        : "Libra's idealism and grace complement your originality. Together you create a partnership that elevates both of you."
                ),
                CompatibilityMatch(
                    sign: .sagittarius,
                    rank: 3,
                    headline: "Free spirits aligned",
                    explanation: isHetero
                        ? "Sagittarius woman respects your independence and brings adventure. Neither of you tries to cage the other."
                        : "Sagittarius matches your independence and intellectual energy. Together you build a free, adventurous partnership."
                )
            ]

        case .pisces:
            return [
                CompatibilityMatch(
                    sign: .cancer,
                    rank: 1,
                    headline: "Emotional sanctuary",
                    explanation: isHetero
                        ? "Cancer woman creates the safe emotional space your tender heart needs. She protects your sensitivity without making you feel weak."
                        : "Cancer's nurturing energy matches your romantic depth. Together you build an emotional sanctuary — safe, soft, and deeply loving."
                ),
                CompatibilityMatch(
                    sign: .scorpio,
                    rank: 2,
                    headline: "Transformative love",
                    explanation: isHetero
                        ? "Scorpio woman matches your depth and adds protective strength. Together the connection feels almost fated — intense, healing, profound."
                        : "Scorpio's depth and loyalty match your romantic soul. Together you create a love that transforms both of you."
                ),
                CompatibilityMatch(
                    sign: .taurus,
                    rank: 3,
                    headline: "Dreams meet earth",
                    explanation: isHetero
                        ? "Taurus woman grounds your dreams without crushing them. She offers the stability your sensitive heart needs."
                        : "Taurus brings the stability and beauty that ground your dreaminess. Together you create something grounded yet magical."
                )
            ]
        }
    }
}
