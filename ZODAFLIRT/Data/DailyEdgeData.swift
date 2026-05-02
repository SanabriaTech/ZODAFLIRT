//
//  DailyEdgeData.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 5/1/26.
//
//  Daily Decoder content — one rotating tip per zodiac sign, surfaced on the
//  home screen's "Today's Edge" card. Selection is deterministic by day-of-year
//  modulo 12 so the same sign shows for everyone on the same calendar day.

import Foundation

struct DailyEdgeTip: Identifiable, Hashable {
    let sign: ZodiacSign
    let headline: String
    let body: String

    var id: String { sign.rawValue }
}

struct DailyEdgeData {

    static let tips: [ZodiacSign: DailyEdgeTip] = [
        .aries: DailyEdgeTip(
            sign: .aries,
            headline: "Don't try to slow them down.",
            body: "Aries reads hesitation as boredom. Match their energy or watch them lose interest. Speed is not aggression to them — it's compatibility."
        ),
        .taurus: DailyEdgeTip(
            sign: .taurus,
            headline: "Comfort is currency.",
            body: "Taurus measures interest by how at-ease they feel with you. The dinner you choose, the temperature of the room, the texture of the moment — they're scoring all of it."
        ),
        .gemini: DailyEdgeTip(
            sign: .gemini,
            headline: "Boredom is the enemy. Mystery is the cure.",
            body: "Tell Gemini everything and they'll move on. Hold back one good story, one strong opinion, one surprising fact about yourself — they'll come back to find out."
        ),
        .cancer: DailyEdgeTip(
            sign: .cancer,
            headline: "They're testing you with silence.",
            body: "Cancer doesn't ask the hard questions out loud. They watch your responses to small ones. Be patient, be present, and don't perform — they're reading you carefully."
        ),
        .leo: DailyEdgeTip(
            sign: .leo,
            headline: "Admiration is air for them.",
            body: "Leo doesn't need flattery — they need to feel seen. Compliment something specific they're proud of, not just how they look. Watch them light up."
        ),
        .virgo: DailyEdgeTip(
            sign: .virgo,
            headline: "Notice the details before they do.",
            body: "Virgo is already cataloging everything about your interaction. Beat them to it — comment on the music, the menu, the small thing they did. Show you're paying attention too."
        ),
        .libra: DailyEdgeTip(
            sign: .libra,
            headline: "Decisions feel like pressure.",
            body: "Libra wants to be courted, not interrogated. Don't ask them to choose the place — choose it for them, beautifully. They'll fall for the gesture, not the question."
        ),
        .scorpio: DailyEdgeTip(
            sign: .scorpio,
            headline: "Surface kills it.",
            body: "Small talk reads as boring to a Scorpio. Skip the weather. Ask them what they think about something real. Hold their gaze a beat longer than expected."
        ),
        .sagittarius: DailyEdgeTip(
            sign: .sagittarius,
            headline: "Don't cage them — invite them.",
            body: "Sag bristles at \"let's plan our future\" energy. Try \"I'm doing X this weekend, come\" instead. Adventure is their love language."
        ),
        .capricorn: DailyEdgeTip(
            sign: .capricorn,
            headline: "They're watching how you handle yourself.",
            body: "Capricorn isn't impressed by what you do — they're impressed by how you do it. Be punctual. Be prepared. Be quietly competent. They notice everything."
        ),
        .aquarius: DailyEdgeTip(
            sign: .aquarius,
            headline: "Ideas are foreplay.",
            body: "Aquarius gets attracted to minds, not lines. Share something you've been thinking about that has nothing to do with them. Watch them lean in."
        ),
        .pisces: DailyEdgeTip(
            sign: .pisces,
            headline: "Feel it with them, don't fix it.",
            body: "When Pisces shares something heavy, resist the urge to solve. Just be there. They're testing whether you can sit in the deep end with them."
        )
    ]

    /// Returns today's featured tip based on day of year (12-day rotation).
    static var todaysTip: DailyEdgeTip {
        let dayOfYear = Calendar.current.ordinality(of: .day, in: .year, for: Date()) ?? 1
        let signIndex = (dayOfYear - 1) % 12
        let allSigns = ZodiacSign.allCases
        let todaysSign = allSigns[signIndex]
        return tips[todaysSign] ?? tips[.aries]!
    }
}
