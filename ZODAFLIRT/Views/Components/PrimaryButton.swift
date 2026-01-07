//
//  PrimaryButton.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppTheme.sansFontMedium(size: 17))
                .foregroundColor(AppTheme.textPrimary)
                .frame(maxWidth: .infinity)
                .frame(height: 52)
                .background(AppTheme.cardBackground)
                .cornerRadius(AppTheme.cornerRadiusMedium)
                .overlay(
                    RoundedRectangle(cornerRadius: AppTheme.cornerRadiusMedium)
                        .stroke(AppTheme.accent, lineWidth: 1)
                )
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        PrimaryButton(title: "Begin") { }
            .padding()
    }
}
