//
//  UserManager.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI
import PhotosUI
import Combine

class UserManager: ObservableObject {
    @Published var userProfile: UserProfile
    @Published var profileImage: UIImage?

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

    func updateGender(_ gender: Gender?) {
        userProfile.gender = gender?.rawValue
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
}
