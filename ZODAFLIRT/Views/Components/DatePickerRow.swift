//
//  DatePickerRow.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI

struct DatePickerRow: View {
    let title: String
    @Binding var date: Date
    @Binding var isExpanded: Bool

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy"
        return formatter
    }

    var body: some View {
        VStack(alignment: .leading, spacing: AppTheme.paddingSmall) {
            Text(title)
                .font(AppTheme.sansFont(size: 15))
                .foregroundColor(AppTheme.textSecondary)

            VStack(spacing: 0) {
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        isExpanded.toggle()
                    }
                }) {
                    HStack {
                        Text(dateFormatter.string(from: date))
                            .font(AppTheme.sansFont(size: 17))
                            .foregroundColor(AppTheme.textPrimary)

                        Spacer()

                        Image(systemName: "chevron.right")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(AppTheme.textMuted)
                            .rotationEffect(.degrees(isExpanded ? 90 : 0))
                    }
                    .padding(.horizontal, AppTheme.paddingMedium)
                    .padding(.vertical, 14)
                }

                if isExpanded {
                    Divider()
                        .background(AppTheme.cardBorder)

                    DatePicker(
                        "",
                        selection: $date,
                        displayedComponents: .date
                    )
                    .datePickerStyle(.wheel)
                    .labelsHidden()
                    .environment(\.colorScheme, .light)
                    .padding(.horizontal, AppTheme.paddingSmall)
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
        DatePickerRow(
            title: "Your Birthday",
            date: .constant(Date()),
            isExpanded: .constant(false)
        )
        .padding()
    }
}
