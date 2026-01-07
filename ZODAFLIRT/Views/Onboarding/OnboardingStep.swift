//
//  OnboardingStep.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import Foundation

enum OnboardingStep: Int, CaseIterable {
    case birthday = 0
    case zodiacReveal = 1
    case profilePhoto = 2
    case experience = 3
    case datingIntent = 4
    case summary = 5

    var progress: Double {
        Double(rawValue + 1) / Double(OnboardingStep.allCases.count)
    }
}
