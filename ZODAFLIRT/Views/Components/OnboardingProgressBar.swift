//
//  OnboardingProgressBar.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct OnboardingProgressBar: View {
    let progress: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                // Background track
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.white.opacity(0.15))
                    .frame(height: 4)

                // Progress fill
                RoundedRectangle(cornerRadius: 2)
                    .fill(AppTheme.accent)
                    .frame(width: geometry.size.width * progress, height: 4)
                    .animation(.easeInOut(duration: 0.3), value: progress)
            }
        }
        .frame(height: 4)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        OnboardingProgressBar(progress: 0.5)
            .padding()
    }
}
