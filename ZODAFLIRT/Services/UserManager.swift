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
        // Load saved profile or create new one
        if let data = UserDefaults.standard.data(forKey: userDefaultsKey),
           let decoded = try? JSONDecoder().decode(UserProfile.self, from: data) {
            self.userProfile = decoded
        } else {
            self.userProfile = UserProfile()
        }

        // Load saved image
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
        if let image = image,
           let data = image.jpegData(compressionQuality: 0.8) {
            UserDefaults.standard.set(data, forKey: imageKey)
        } else {
            UserDefaults.standard.removeObject(forKey: imageKey)
        }
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
}
