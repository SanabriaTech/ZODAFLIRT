//
//  GenderedContent.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//

import Foundation

/// Represents content that has variants for different guidance contexts
struct GenderedContent {
    let heteroManToWoman: String?
    let heteroWomanToMan: String?
    let gayManToMan: String?
    let lesbianWomanToWoman: String?

    /// Get content for specific context, falling back to default if needed
    func content(for context: GuidanceContext, fallback: String = "") -> String {
        switch context {
        case .heteroManToWoman:
            return heteroManToWoman ?? heteroWomanToMan ?? fallback
        case .heteroWomanToMan:
            return heteroWomanToMan ?? heteroManToWoman ?? fallback
        case .gayManToMan:
            return gayManToMan ?? heteroManToWoman ?? fallback
        case .lesbianWomanToWoman:
            return lesbianWomanToWoman ?? heteroWomanToMan ?? fallback
        }
    }
}

/// Array version for content like list items
struct GenderedContentList {
    let heteroManToWoman: [String]?
    let heteroWomanToMan: [String]?
    let gayManToMan: [String]?
    let lesbianWomanToWoman: [String]?

    func content(for context: GuidanceContext, fallback: [String] = []) -> [String] {
        switch context {
        case .heteroManToWoman:
            return heteroManToWoman ?? heteroWomanToMan ?? fallback
        case .heteroWomanToMan:
            return heteroWomanToMan ?? heteroManToWoman ?? fallback
        case .gayManToMan:
            return gayManToMan ?? heteroManToWoman ?? fallback
        case .lesbianWomanToWoman:
            return lesbianWomanToWoman ?? heteroWomanToMan ?? fallback
        }
    }
}
