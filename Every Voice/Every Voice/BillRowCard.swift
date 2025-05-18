//
//  BillRowCard.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import SwiftUI

struct BillRowCard: View {
    let bill: CongressBill

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(bill.title)
                .font(.headline)
                .foregroundColor(.primary)

            if let summary = bill.summary {
                Text(summary)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
            }

            if let url = bill.fullTextUrl, let link = URL(string: url) {
                Link("Read Full Text", destination: link)
                    .font(.footnote)
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(radius: 1)
    }
}
