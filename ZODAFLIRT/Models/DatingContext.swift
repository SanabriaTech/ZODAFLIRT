//
//  DatingContext.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/8/26.
//

import Foundation

enum DatingContext: String, CaseIterable, Identifiable, Codable {
    case date = "date"
    case phoneCall = "phoneCall"
    case texting = "texting"

    var id: String { rawValue }

    var title: String {
        switch self {
        case .date: return "Got a date?"
        case .phoneCall: return "Phone call?"
        case .texting: return "Text conversation?"
        }
    }

    var subtitle: String {
        switch self {
        case .date: return "First impressions, chemistry, and what works."
        case .phoneCall: return "What to say, how to connect, and what to avoid."
        case .texting: return "How to spark interest and keep momentum."
        }
    }

    var icon: String {
        switch self {
        case .date: return "heart.fill"
        case .phoneCall: return "phone.fill"
        case .texting: return "message.fill"
        }
    }

    var relevantPlaybookCard: String {
        switch self {
        case .date: return "firstDate"
        case .phoneCall: return "whatToSay"
        case .texting: return "texting"
        }
    }
}
