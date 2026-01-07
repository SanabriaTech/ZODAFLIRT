//
//  MenuButton.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct MenuButton: View {
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: "ellipsis")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(AppTheme.textSecondary)
                .frame(width: 44, height: 44)
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        MenuButton { }
    }
}
