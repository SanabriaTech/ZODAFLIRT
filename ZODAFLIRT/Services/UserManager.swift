//
//  UserManager.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI
import PhotosUI
import Observation

@Observable
@MainActor
final class UserManager {
    var userProfile: UserProfile
    var profileImage: UIImage?

    private let userDefaultsKey = "userProfile"
    private let imageKey = "profileImage"

    init() {
        if let data = UserDefaults.standard.data(forKey: userDefaultsKey),
           let decoded = try? JSONDecoder().decode(UserProfile.self, from: data) {
            self.userProfile = decoded
        } else {
            self.userProfile = UserProfile()
        }

        if let imageData = UserDefaults.standard.data(forKey: imageKey),
           let image = UIImage(data: imageData) {
            self.profileImage = image
        } else {
            self.profileImage = nil
        }
    }

    func save() {
        if let encoded = try? JSONEncoder().encode(userProfile) {
            UserDefaults.standard.set(encoded, forKey: userDefaultsKey)
        }
    }

    func saveProfileImage(_ image: UIImage?) {
        profileImage = image
        userProfile.usesZodiacAsAvatar = (image == nil)
        if let image = image,
           let data = image.jpegData(compressionQuality: 0.8) {
            UserDefaults.standard.set(data, forKey: imageKey)
        } else {
            UserDefaults.standard.removeObject(forKey: imageKey)
        }
        save()
    }

    func useZodiacAsAvatar() {
        profileImage = nil
        userProfile.usesZodiacAsAvatar = true
        UserDefaults.standard.removeObject(forKey: imageKey)
        save()
    }

    func updateBirthday(_ date: Date) {
        userProfile.birthday = date
        save()
    }

    func updateName(_ name: String) {
        userProfile.name = name
        save()
    }

    func updateAstrologyExperience(_ experience: AstrologyExperience) {
        userProfile.astrologyExperience = experience.rawValue
        save()
    }

    func updateDatingIntents(_ intents: [DatingIntent]) {
        userProfile.datingIntents = intents.map { $0.rawValue }
        save()
    }

    func toggleDatingIntent(_ intent: DatingIntent) {
        if userProfile.datingIntents.contains(intent.rawValue) {
            userProfile.datingIntents.removeAll { $0 == intent.rawValue }
        } else {
            userProfile.datingIntents.append(intent.rawValue)
        }
        save()
    }

    func hasDatingIntent(_ intent: DatingIntent) -> Bool {
        userProfile.datingIntents.contains(intent.rawValue)
    }

    func toggleSavedSign(_ sign: ZodiacSign) {
        userProfile.toggleSave(for: sign)
        save()
    }

    func isSignSaved(_ sign: ZodiacSign) -> Bool {
        userProfile.isSignSaved(sign)
    }

    func completeOnboarding() {
        userProfile.hasCompletedOnboarding = true
        save()
    }

    func resetOnboarding() {
        userProfile = UserProfile()
        profileImage = nil
        UserDefaults.standard.removeObject(forKey: userDefaultsKey)
        UserDefaults.standard.removeObject(forKey: imageKey)
    }

    // MARK: - Dating Playbook

    func hasPlaybookAccess(for sign: ZodiacSign) -> Bool {
        // Premium users have full access
        // For now, check if this specific sign was unlocked with free unlock
        return userProfile.unlockedPlaybookSign == sign.rawValue
    }

    func canUseFreePlaybookUnlock() -> Bool {
        return !userProfile.freePlaybookUnlockUsed
    }

    func useFreePlaybookUnlock(for sign: ZodiacSign) {
        userProfile.freePlaybookUnlockUsed = true
        userProfile.unlockedPlaybookSign = sign.rawValue
        save()
    }

    // MARK: - Dating Context

    func setDatingContext(_ context: DatingContext?) {
        userProfile.currentDatingContext = context?.rawValue
        save()
    }

    func getDatingContext() -> DatingContext? {
        guard let rawValue = userProfile.currentDatingContext else { return nil }
        return DatingContext(rawValue: rawValue)
    }

    func clearDatingContext() {
        userProfile.currentDatingContext = nil
        save()
    }

    // MARK: - Gender & Guidance Target

    func setUserGender(_ gender: UserGender) {
        userProfile.userGender = gender.rawValue

        // Auto-set default guidance target based on gender if not already set
        if userProfile.guidanceTarget == nil {
            switch gender {
            case .man:
                userProfile.guidanceTarget = GuidanceTarget.women.rawValue
            case .woman:
                userProfile.guidanceTarget = GuidanceTarget.men.rawValue
            case .nonBinary:
                // Non-binary users will explicitly choose, no default
                break
            }
        }

        save()
    }

    func getUserGender() -> UserGender? {
        guard let rawValue = userProfile.userGender else { return nil }
        return UserGender(rawValue: rawValue)
    }

    func setGuidanceTarget(_ target: GuidanceTarget) {
        let previousTarget = userProfile.guidanceTarget
        userProfile.guidanceTarget = target.rawValue

        // If target changed AND user had used their free unlock AND haven't used a reset yet,
        // grant one bonus reset of the free unlock.
        if let previous = previousTarget,
           previous != target.rawValue,
           userProfile.freePlaybookUnlockUsed,
           (userProfile.freeResetsUsed ?? 0) == 0 {
            userProfile.freePlaybookUnlockUsed = false
            userProfile.unlockedPlaybookSign = nil
            userProfile.freeResetsUsed = 1
        }

        save()
    }

    func hasUnusedFreeReset() -> Bool {
        return !userProfile.freePlaybookUnlockUsed && (userProfile.freeResetsUsed ?? 0) > 0
    }

    func getGuidanceTarget() -> GuidanceTarget? {
        guard let rawValue = userProfile.guidanceTarget else { return nil }
        return GuidanceTarget(rawValue: rawValue)
    }

    func getGuidanceContext() -> GuidanceContext? {
        guard let gender = getUserGender(),
              let target = getGuidanceTarget() else {
            return nil
        }
        return GuidanceContext.determine(userGender: gender, target: target)
    }

    func toggleGuidanceTarget() {
        guard let current = getGuidanceTarget() else { return }
        let newTarget: GuidanceTarget = current == .women ? .men : .women
        setGuidanceTarget(newTarget)
    }
}
