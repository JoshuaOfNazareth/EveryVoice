//
//  BillCardView.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import SwiftUI

struct BillCardView: View {
    let bill: Bill

    var body: some View {
        TabView {
            BillOverviewCard(bill: bill)
            BillSummaryCard(bill: bill)
            BillAnalysisCard(bill: bill) // ✅ this now reflects your updated modular analysis views
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(height: 520)
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(16)
        .shadow(radius: 3)
        .padding(.horizontal)
    }
}
