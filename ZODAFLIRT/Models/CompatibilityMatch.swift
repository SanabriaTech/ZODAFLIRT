//
//  CompatibilityMatch.swift
//  ZODAFLIRT
//

import Foundation

struct CompatibilityMatch: Identifiable {
    let id = UUID()
    let sign: ZodiacSign
    let rank: Int
    let headline: String
    let explanation: String
}
