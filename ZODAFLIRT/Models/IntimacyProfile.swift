//
//  IntimacyProfile.swift
//  ZODAFLIRT
//

import Foundation

struct IntimacyProfile: Identifiable {
    let id: String
    let sign: ZodiacSign
    let teaser: String
    let bedroomEnergy: String
    let whatTheyWant: [String]
    let whatToAvoid: [String]
    let afterward: String

    init(sign: ZodiacSign, teaser: String, bedroomEnergy: String, whatTheyWant: [String], whatToAvoid: [String], afterward: String) {
        self.id = sign.rawValue
        self.sign = sign
        self.teaser = teaser
        self.bedroomEnergy = bedroomEnergy
        self.whatTheyWant = whatTheyWant
        self.whatToAvoid = whatToAvoid
        self.afterward = afterward
    }

    // Adjusted content based on dating intent
    func adjustedBedroomEnergy(for intents: [String]) -> String {
        if intents.contains(DatingIntent.hookups.rawValue) || intents.contains(DatingIntent.casual.rawValue) {
            return bedroomEnergy
        } else if intents.contains(DatingIntent.longTerm.rawValue) {
            return bedroomEnergy.replacingOccurrences(of: "chemistry", with: "deep connection")
                .replacingOccurrences(of: "passion", with: "emotional intimacy")
        }
        return bedroomEnergy
    }
}
