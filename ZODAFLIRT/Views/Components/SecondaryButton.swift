//
//  SecondaryButton.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct SecondaryButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppTheme.sansFont(size: 15))
                .foregroundColor(AppTheme.textSecondary)
                .underline()
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        SecondaryButton(title: "How it works") { }
    }
}
