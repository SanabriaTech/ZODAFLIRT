//
//  ZodiacProfile.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import Foundation

// MARK: - Main Profile Container

struct ZodiacProfile: Identifiable {
    let id: String
    let sign: ZodiacSign
    let tagline: String
    let introduction: String
    let howToAttract: ProfileSection
    let howToSeduce: SeductionSection
    let physicalChemistry: ProfileSection
    let mustDos: [ChecklistItem]
    let avoids: [ChecklistItem]

    init(sign: ZodiacSign, tagline: String, introduction: String,
         howToAttract: ProfileSection, howToSeduce: SeductionSection,
         physicalChemistry: ProfileSection, mustDos: [ChecklistItem],
         avoids: [ChecklistItem]) {
        self.id = sign.rawValue
        self.sign = sign
        self.tagline = tagline
        self.introduction = introduction
        self.howToAttract = howToAttract
        self.howToSeduce = howToSeduce
        self.physicalChemistry = physicalChemistry
        self.mustDos = mustDos
        self.avoids = avoids
    }
}

// MARK: - Generic Section

struct ProfileSection: Identifiable {
    let id = UUID()
    let title: String
    let content: String
    let teaser: String?
    let isPremium: Bool

    init(title: String, content: String, teaser: String? = nil, isPremium: Bool = false) {
        self.title = title
        self.content = content
        self.teaser = teaser
        self.isPremium = isPremium
    }
}

// MARK: - Seduction Section

struct SeductionSection {
    let title: String
    let introduction: String
    let scenarios: [SeductionScenario]
    let isPremiumContent: Bool

    init(title: String, introduction: String, scenarios: [SeductionScenario],
         isPremiumContent: Bool = true) {
        self.title = title
        self.introduction = introduction
        self.scenarios = scenarios
        self.isPremiumContent = isPremiumContent
    }
}

// MARK: - Seduction Scenario

struct SeductionScenario: Identifiable {
    let id = UUID()
    let number: Int
    let title: String
    let description: String

    init(number: Int, title: String, description: String) {
        self.number = number
        self.title = title
        self.description = description
    }
}

// MARK: - Checklist Item

struct ChecklistItem: Identifiable {
    let id = UUID()
    let text: String
    let isPositive: Bool

    init(_ text: String, isPositive: Bool) {
        self.text = text
        self.isPositive = isPositive
    }
}
