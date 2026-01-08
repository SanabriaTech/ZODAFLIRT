//
//  PremiumManager.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import Foundation
import Observation

@Observable
@MainActor
final class PremiumManager {
    var isPremium: Bool = false

    private var storeKitManager: StoreKitManager?

    init() {
        // Will be connected to StoreKitManager
    }

    func configure(with storeKitManager: StoreKitManager) {
        self.storeKitManager = storeKitManager

        // Set initial state
        isPremium = storeKitManager.hasActiveSubscription
    }

    func updateFromStoreKit() {
        guard let storeKitManager else { return }
        isPremium = storeKitManager.hasActiveSubscription
    }

    // For testing/debug purposes
    func togglePremium() {
        isPremium.toggle()
    }
}
