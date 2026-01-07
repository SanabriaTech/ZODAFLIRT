//
//  CosmicBackground.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct CosmicBackground: View {
    var body: some View {
        GeometryReader { geometry in
            Image("zod-main-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .clipped()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CosmicBackground()
}
