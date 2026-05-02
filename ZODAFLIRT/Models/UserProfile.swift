//
//  UserProfile.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import Foundation

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
    var astrologyExperience: String?
    var datingIntents: [String]
    var savedSigns: [String]
    var usesZodiacAsAvatar: Bool
    var hasCompletedOnboarding: Bool
    var freePlaybookUnlockUsed: Bool
    var unlockedPlaybookSign: String?
    var freeResetsUsed: Int?
    var hasSeenWelcome: Int?
    var currentDatingContext: String?
    var userGender: String?
    var guidanceTarget: String?

    init() {
        self.name = nil
        self.birthday = nil
        self.astrologyExperience = nil
        self.datingIntents = []
        self.savedSigns = []
        self.usesZodiacAsAvatar = false
        self.hasCompletedOnboarding = false
        self.freePlaybookUnlockUsed = false
        self.unlockedPlaybookSign = nil
        self.freeResetsUsed = nil
        self.hasSeenWelcome = nil
        self.currentDatingContext = nil
        self.userGender = nil
        self.guidanceTarget = nil
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
