//
//  SeductionByTheStarsApp.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

@main
struct SeductionByTheStarsApp: App {
    @StateObject private var premiumManager = PremiumManager()
    @StateObject private var userManager = UserManager()

    var body: some Scene {
        WindowGroup {
            MainAppView()
                .environmentObject(premiumManager)
                .environmentObject(userManager)
                .preferredColorScheme(.dark)
        }
    }
}
