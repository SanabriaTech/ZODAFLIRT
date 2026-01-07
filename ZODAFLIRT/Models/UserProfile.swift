//
//  UserProfile.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import Foundation

// MARK: - Gender

enum Gender: String, CaseIterable, Identifiable, Codable {
    case male = "Male"
    case female = "Female"
    case preferNotToSay = "Prefer not to say"

    var id: String { rawValue }
}

// MARK: - Astrology Experience Level

enum AstrologyExperience: String, CaseIterable, Identifiable, Codable {
    case curious = "Just curious"
    case basics = "Know the basics"
    case expert = "Very into astrology"

    var id: String { rawValue }
}

// MARK: - Dating Intent

enum DatingIntent: String, CaseIterable, Identifiable, Codable {
    case casual = "Casual dating"
    case hookups = "Hookups / chemistry"
    case longTerm = "Long-term relationships"
    case exploring = "Just exploring"

    var id: String { rawValue }
}

// MARK: - User Profile

struct UserProfile: Codable {
    var name: String?
    var birthday: Date?
    var gender: String?
    var astrologyExperience: String?
    var datingIntents: [String]
    var savedSigns: [String]
    var usesZodiacAsAvatar: Bool
    var hasCompletedOnboarding: Bool

    init() {
        self.name = nil
        self.birthday = nil
        self.gender = nil
        self.astrologyExperience = nil
        self.datingIntents = []
        self.savedSigns = []
        self.usesZodiacAsAvatar = false
        self.hasCompletedOnboarding = false
    }

    var zodiacSign: ZodiacSign? {
        guard let birthday = birthday else { return nil }
        return ZodiacSign.from(date: birthday)
    }

    func isSignSaved(_ sign: ZodiacSign) -> Bool {
        savedSigns.contains(sign.rawValue)
    }

    mutating func toggleSave(for sign: ZodiacSign) {
        if isSignSaved(sign) {
            savedSigns.removeAll { $0 == sign.rawValue }
        } else {
            savedSigns.append(sign.rawValue)
        }
    }

    var savedZodiacSigns: [ZodiacSign] {
        savedSigns.compactMap { signName in
            ZodiacSign.allCases.first { $0.rawValue == signName }
        }
    }
}
