//
//  SeductionByTheStarsApp.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

@main
struct SeductionByTheStarsApp: App {
    @State private var storeKitManager = StoreKitManager()
    @State private var premiumManager = PremiumManager()
    @State private var userManager = UserManager()

    var body: some Scene {
        WindowGroup {
            MainAppView()
                .environment(storeKitManager)
                .environment(premiumManager)
                .environment(userManager)
                .preferredColorScheme(.dark)
                .task {
                    premiumManager.configure(with: storeKitManager)
                }
        }
    }
}
