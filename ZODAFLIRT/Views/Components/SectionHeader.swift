//
//  SectionHeader.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct SectionHeader: View {
    let title: String
    var isPremium: Bool = false

    var body: some View {
        HStack {
            Text(title)
                .font(AppTheme.serifFont(size: 24))
                .foregroundColor(AppTheme.textPrimary)

            Spacer()

            if isPremium {
                Image(systemName: "lock.fill")
                    .font(.system(size: 14))
                    .foregroundColor(AppTheme.accent)
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack(spacing: 20) {
            SectionHeader(title: "How to Seduce")
            SectionHeader(title: "Physical Chemistry", isPremium: true)
        }
        .padding()
    }
}
