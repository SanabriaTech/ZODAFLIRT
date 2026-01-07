//
//  ChecklistView.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import SwiftUI

struct ChecklistView: View {
    let title: String
    let items: [ChecklistItem]
    let isPositive: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(AppTheme.serifFont(size: 24))
                .foregroundColor(AppTheme.textPrimary)

            VStack(alignment: .leading, spacing: 12) {
                ForEach(items) { item in
                    HStack(alignment: .top, spacing: 12) {
                        Image(systemName: isPositive ? "checkmark" : "xmark")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(isPositive ? AppTheme.accent : Color.red.opacity(0.8))
                            .frame(width: 20)

                        Text(item.text)
                            .font(AppTheme.sansFont(size: 16))
                            .foregroundColor(AppTheme.textPrimary)
                            .fixedSize(horizontal: false, vertical: true)

                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack(spacing: 32) {
            ChecklistView(
                title: "Must-Do's",
                items: [
                    ChecklistItem("Keep things playful", isPositive: true),
                    ChecklistItem("Stay mentally engaged", isPositive: true),
                    ChecklistItem("Allow space and freedom", isPositive: true)
                ],
                isPositive: true
            )

            ChecklistView(
                title: "No-No's",
                items: [
                    ChecklistItem("Clinginess", isPositive: false),
                    ChecklistItem("Predictability", isPositive: false)
                ],
                isPositive: false
            )
        }
        .padding()
    }
}
