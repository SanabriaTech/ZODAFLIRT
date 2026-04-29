//
//  UserGender.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//

import Foundation

enum UserGender: String, CaseIterable, Identifiable, Codable {
    case man = "man"
    case woman = "woman"
    case nonBinary = "nonBinary"

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .man: return "Man"
        case .woman: return "Woman"
        case .nonBinary: return "Non-binary"
        }
    }

    var icon: String {
        switch self {
        case .man: return "person.fill"
        case .woman: return "person.fill"
        case .nonBinary: return "person.fill"
        }
    }
}

enum GuidanceTarget: String, CaseIterable, Identifiable, Codable {
    case women = "women"
    case men = "men"

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .women: return "Women"
        case .men: return "Men"
        }
    }

    var description: String {
        switch self {
        case .women: return "Guidance on connecting with women"
        case .men: return "Guidance on connecting with men"
        }
    }
}

// Helper to determine relationship context (hetero/same-sex) for content selection
enum GuidanceContext: String, Codable {
    case heteroManToWoman = "hetero_m_to_w"       // Man seeking woman
    case heteroWomanToMan = "hetero_w_to_m"       // Woman seeking man
    case gayManToMan = "gay_m_to_m"               // Man seeking man
    case lesbianWomanToWoman = "lesbian_w_to_w"   // Woman seeking woman

    static func determine(userGender: UserGender, target: GuidanceTarget) -> GuidanceContext {
        switch (userGender, target) {
        case (.man, .women): return .heteroManToWoman
        case (.woman, .men): return .heteroWomanToMan
        case (.man, .men): return .gayManToMan
        case (.woman, .women): return .lesbianWomanToWoman
        case (.nonBinary, .women): return .lesbianWomanToWoman
        case (.nonBinary, .men): return .gayManToMan
        }
    }
}
