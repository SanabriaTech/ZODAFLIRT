//
//  DatingPlaybook.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import Foundation

struct DatingPlaybook: Identifiable {
    let id: String
    let sign: ZodiacSign
    let firstDate: PlaybookCard
    let whatToSay: PlaybookCard
    let whereToTake: PlaybookCard
    let gifts: PlaybookCard

    init(sign: ZodiacSign, firstDate: PlaybookCard, whatToSay: PlaybookCard, whereToTake: PlaybookCard, gifts: PlaybookCard) {
        self.id = sign.rawValue
        self.sign = sign
        self.firstDate = firstDate
        self.whatToSay = whatToSay
        self.whereToTake = whereToTake
        self.gifts = gifts
    }
}

struct PlaybookCard: Identifiable {
    let id = UUID()
    let title: String
    let content: [String]

    init(title: String, content: [String]) {
        self.title = title
        self.content = content
    }
}
