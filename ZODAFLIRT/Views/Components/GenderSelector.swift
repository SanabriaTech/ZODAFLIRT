//
//  GenderSelector.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct GenderSelector: View {
    @Binding var selectedGender: Gender?

    var body: some View {
        VStack(alignment: .leading, spacing: AppTheme.paddingSmall) {
            HStack(spacing: 4) {
                Text("Gender")
                    .font(AppTheme.sansFont(size: 15))
                    .foregroundColor(AppTheme.textSecondary)

                Text("(optional)")
                    .font(AppTheme.sansFont(size: 13))
                    .foregroundColor(AppTheme.textMuted)
            }

            VStack(spacing: 0) {
                ForEach(Array(Gender.allCases.enumerated()), id: \.element.id) { index, gender in
                    Button(action: {
                        selectedGender = gender
                    }) {
                        HStack {
                            Text(gender.rawValue)
                                .font(AppTheme.sansFont(size: 17))
                                .foregroundColor(AppTheme.textPrimary)

                            Spacer()

                            if selectedGender == gender {
                                Image(systemName: "checkmark")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(AppTheme.accent)
                            }
                        }
                        .padding(.horizontal, AppTheme.paddingMedium)
                        .padding(.vertical, 14)
                        .background(Color.clear)
                    }

                    if index < Gender.allCases.count - 1 {
                        Divider()
                            .background(AppTheme.cardBorder)
                    }
                }
            }
            .background(AppTheme.cardBackground)
            .cornerRadius(AppTheme.cornerRadiusMedium)
            .overlay(
                RoundedRectangle(cornerRadius: AppTheme.cornerRadiusMedium)
                    .stroke(AppTheme.cardBorder, lineWidth: 1)
            )
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        GenderSelector(selectedGender: .constant(.male))
            .padding()
    }
}
