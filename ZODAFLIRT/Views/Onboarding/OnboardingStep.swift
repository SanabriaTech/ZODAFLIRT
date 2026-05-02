//
//  OnboardingStep.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import Foundation

enum OnboardingStep: Int, CaseIterable {
    case nameEntry = 0
    case birthday = 1
    case zodiacReveal = 2
    case gender = 3
    case guidanceTarget = 4
    case profilePhoto = 5
    case experience = 6
    case datingIntent = 7
    case summary = 8

    var progress: Double {
        Double(rawValue + 1) / Double(OnboardingStep.allCases.count)
    }
}
