//
//  ZodiacSign.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import Foundation

enum ZodiacSign: String, CaseIterable, Identifiable {
    case aries = "Aries"
    case taurus = "Taurus"
    case gemini = "Gemini"
    case cancer = "Cancer"
    case leo = "Leo"
    case virgo = "Virgo"
    case libra = "Libra"
    case scorpio = "Scorpio"
    case sagittarius = "Sagittarius"
    case capricorn = "Capricorn"
    case aquarius = "Aquarius"
    case pisces = "Pisces"

    var id: String { rawValue }

    var name: String { rawValue }

    var iconName: String { rawValue }

    var dateRange: String {
        switch self {
        case .aries: return "March 21 – April 19"
        case .taurus: return "April 20 – May 20"
        case .gemini: return "May 21 – June 20"
        case .cancer: return "June 21 – July 22"
        case .leo: return "July 23 – August 22"
        case .virgo: return "August 23 – September 22"
        case .libra: return "September 23 – October 22"
        case .scorpio: return "October 23 – November 21"
        case .sagittarius: return "November 22 – December 21"
        case .capricorn: return "December 22 – January 19"
        case .aquarius: return "January 20 – February 18"
        case .pisces: return "February 19 – March 20"
        }
    }

    var element: String {
        switch self {
        case .aries, .leo, .sagittarius: return "Fire"
        case .taurus, .virgo, .capricorn: return "Earth"
        case .gemini, .libra, .aquarius: return "Air"
        case .cancer, .scorpio, .pisces: return "Water"
        }
    }

    static func from(date: Date) -> ZodiacSign {
        let calendar = Calendar.current
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)

        switch (month, day) {
        case (3, 21...31), (4, 1...19): return .aries
        case (4, 20...30), (5, 1...20): return .taurus
        case (5, 21...31), (6, 1...20): return .gemini
        case (6, 21...30), (7, 1...22): return .cancer
        case (7, 23...31), (8, 1...22): return .leo
        case (8, 23...31), (9, 1...22): return .virgo
        case (9, 23...30), (10, 1...22): return .libra
        case (10, 23...31), (11, 1...21): return .scorpio
        case (11, 22...30), (12, 1...21): return .sagittarius
        case (12, 22...31), (1, 1...19): return .capricorn
        case (1, 20...31), (2, 1...18): return .aquarius
        case (2, 19...29), (3, 1...20): return .pisces
        default: return .aries
        }
    }
}
