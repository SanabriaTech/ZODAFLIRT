//
//  PremiumBoundaryDivider.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct PremiumBoundaryDivider: View {
    var message: String = "This is where things get more personal."

    var body: some View {
        VStack(spacing: 12) {
            // Divider line with sparkle
            HStack(spacing: 16) {
                Rectangle()
                    .fill(
                        LinearGradient(
                            colors: [Color.clear, AppTheme.accent.opacity(0.5)],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(height: 1)

                Image(systemName: "sparkle")
                    .font(.system(size: 14))
                    .foregroundColor(AppTheme.accent)

                Rectangle()
                    .fill(
                        LinearGradient(
                            colors: [AppTheme.accent.opacity(0.5), Color.clear],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(height: 1)
            }

            // Message
            Text(message)
                .font(AppTheme.sansFont(size: 14))
                .foregroundColor(AppTheme.textMuted)
                .italic()
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        PremiumBoundaryDivider()
            .padding()
    }
}
