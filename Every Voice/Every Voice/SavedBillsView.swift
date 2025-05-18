//
//  SavedBillsView.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import SwiftUI

struct SavedBillsView: View {
    let savedBills: [Bill] = sampleBills

    var body: some View {
        List {
            ForEach(savedBills) { bill in
                NavigationLink(destination: BillCardView(bill: bill)) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(bill.title)
                            .font(.subheadline)
                            .bold()
                        Text("Sponsored by: \(bill.sponsor)")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        .navigationTitle("Saved Bills")
    }
}

