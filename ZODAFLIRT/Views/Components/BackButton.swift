//
//  BackButton.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct BackButton: View {
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.left")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(AppTheme.textPrimary)
                .frame(width: 44, height: 44)
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        BackButton { }
    }
}
