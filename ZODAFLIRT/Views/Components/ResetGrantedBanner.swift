//
//  ResetGrantedBanner.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//

import SwiftUI

struct ResetGrantedBanner: View {
    let onDismiss: () -> Void

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "sparkles")
                .font(.system(size: 18))
                .foregroundColor(AppTheme.accent)

            VStack(alignment: .leading, spacing: 2) {
                Text("Free Unlock Reset")
                    .font(AppTheme.sansFontMedium(size: 14))
                    .foregroundColor(AppTheme.textPrimary)

                Text("Pick one personality type to explore.")
                    .font(AppTheme.sansFont(size: 12))
                    .foregroundColor(AppTheme.textSecondary)
            }

            Spacer()

            Button(action: onDismiss) {
                Image(systemName: "xmark")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(AppTheme.textMuted)
                    .frame(width: 28, height: 28)
            }
        }
        .padding(12)
        .background(AppTheme.accent.opacity(0.10))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(AppTheme.accent.opacity(0.30), lineWidth: 1)
        )
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ResetGrantedBanner(onDismiss: { })
            .padding()
    }
}
