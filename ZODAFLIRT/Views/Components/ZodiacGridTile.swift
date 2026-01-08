//
//  ZodiacGridTile.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct ZodiacGridTile: View {
    let sign: ZodiacSign
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(spacing: 8) {
                Image(sign.iconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 85, height: 85)

                Text(sign.name)
                    .font(AppTheme.sansFontMedium(size: 14))
                    .foregroundColor(AppTheme.textPrimary)

                Text(sign.dateRange)
                    .font(AppTheme.sansFont(size: 10))
                    .foregroundColor(AppTheme.textMuted)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .minimumScaleFactor(0.8)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .padding(.horizontal, 8)
            .background(AppTheme.cardBackground)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(AppTheme.cardBorder, lineWidth: 1)
            )
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ZodiacGridTile(sign: .gemini) { }
            .frame(width: 110)
            .padding()
    }
}
