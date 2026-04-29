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
    case gender = 2
    case guidanceTarget = 3
    case profilePhoto = 4
    case experience = 5
    case datingIntent = 6
    case summary = 7

    var progress: Double {
        Double(rawValue + 1) / Double(OnboardingStep.allCases.count)
    }
}
