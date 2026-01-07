//
//  NavigationHeader.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct NavigationHeader: View {
    var showBack: Bool = true
    var onBack: (() -> Void)? = nil
    var onMenu: (() -> Void)? = nil

    var body: some View {
        HStack {
            if showBack, let onBack = onBack {
                BackButton(action: onBack)
            } else {
                Spacer().frame(width: 44)
            }

            Spacer()

            if let onMenu = onMenu {
                MenuButton(action: onMenu)
            } else {
                Spacer().frame(width: 44)
            }
        }
        .padding(.horizontal, AppTheme.paddingSmall)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack {
            NavigationHeader(showBack: true, onBack: { }, onMenu: { })
            Spacer()
        }
    }
}
