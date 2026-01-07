//
//  ZodiacPersonality.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import Foundation

struct ZodiacPersonality {

    static func getSummary(for sign: ZodiacSign) -> String {
        switch sign {
        case .aries:
            return "You're a natural leader with boundless energy and courage. Bold, ambitious, and fiercely independent, you dive headfirst into challenges others avoid. Your passion is contagious, and your honesty—while sometimes blunt—is refreshing. You thrive on competition and new beginnings."

        case .taurus:
            return "You're grounded, reliable, and deeply sensual. You appreciate the finer things in life and work steadily toward your goals. Loyal to your core, you value stability and comfort. Your patience is legendary, but so is your stubbornness when you've made up your mind."

        case .gemini:
            return "You're curious, adaptable, and endlessly entertaining. Your mind moves quickly, making connections others miss. Communication is your superpower—you can talk to anyone about anything. You crave variety and mental stimulation, and you bring lightness wherever you go."

        case .cancer:
            return "You're deeply intuitive and emotionally intelligent. Your ability to nurture and protect those you love is unmatched. Home and family are everything to you. Beneath your protective shell is a deeply romantic soul with an incredible memory for moments that matter."

        case .leo:
            return "You're warm, generous, and naturally magnetic. You light up every room you enter and inspire others with your confidence. Creative and dramatic, you have a flair for the extraordinary. Your loyalty is fierce, and your heart is bigger than your reputation suggests."

        case .virgo:
            return "You're analytical, thoughtful, and incredibly attentive to detail. Your desire to help and improve things makes you invaluable. Practical and hardworking, you notice what others miss. Beneath your composed exterior is a deeply caring person who shows love through action."

        case .libra:
            return "You're charming, diplomatic, and drawn to beauty in all forms. Relationships are central to your life—you thrive in partnership. Your sense of fairness and justice guides your decisions. You create harmony wherever you go and make others feel at ease."

        case .scorpio:
            return "You're intense, perceptive, and magnetically powerful. You feel everything deeply and see through facades effortlessly. Your loyalty is absolute, and your determination is unshakeable. You seek truth and transformation, and you're not afraid of the dark."

        case .sagittarius:
            return "You're optimistic, adventurous, and endlessly curious about the world. Freedom is essential to your happiness. Your honesty is refreshing, and your enthusiasm is infectious. You see life as a grand adventure and inspire others to expand their horizons."

        case .capricorn:
            return "You're ambitious, disciplined, and quietly powerful. You build things meant to last and take responsibility seriously. Your dry wit surprises people who mistake your seriousness for coldness. Beneath your composed exterior is someone deeply committed to those you love."

        case .aquarius:
            return "You're original, independent, and ahead of your time. You see possibilities others miss and question what everyone else accepts. Your humanitarian spirit cares deeply about the collective. You value friendship and intellectual connection above all."

        case .pisces:
            return "You're intuitive, creative, and deeply empathetic. You feel the emotions of others as if they were your own. Your imagination is boundless, and your romantic nature seeks soul-deep connection. You bring magic and compassion to everything you touch."
        }
    }

    static func getTraits(for sign: ZodiacSign) -> [String] {
        switch sign {
        case .aries:
            return ["Bold", "Energetic", "Competitive", "Independent", "Passionate"]
        case .taurus:
            return ["Reliable", "Patient", "Sensual", "Determined", "Loyal"]
        case .gemini:
            return ["Curious", "Adaptable", "Witty", "Social", "Versatile"]
        case .cancer:
            return ["Nurturing", "Intuitive", "Protective", "Emotional", "Loyal"]
        case .leo:
            return ["Confident", "Generous", "Creative", "Warm", "Dramatic"]
        case .virgo:
            return ["Analytical", "Helpful", "Reliable", "Precise", "Modest"]
        case .libra:
            return ["Diplomatic", "Charming", "Balanced", "Social", "Romantic"]
        case .scorpio:
            return ["Intense", "Perceptive", "Passionate", "Determined", "Mysterious"]
        case .sagittarius:
            return ["Adventurous", "Optimistic", "Honest", "Independent", "Philosophical"]
        case .capricorn:
            return ["Ambitious", "Disciplined", "Patient", "Responsible", "Practical"]
        case .aquarius:
            return ["Original", "Independent", "Humanitarian", "Intellectual", "Inventive"]
        case .pisces:
            return ["Intuitive", "Compassionate", "Creative", "Romantic", "Empathetic"]
        }
    }
}
