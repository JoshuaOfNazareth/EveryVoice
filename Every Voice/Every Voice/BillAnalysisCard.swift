//
//  BillAnalysisCard.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import SwiftUI

struct BillAnalysisCard: View {
    let bill: Bill

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Constitutional Analysis
            if let constitutional = bill.constitutionalAnalysis {
                AnalysisSectionView(
                    title: "Constitutional Analysis",
                    pros: constitutional.pros,
                    cons: constitutional.cons
                )
            }

            // Ethical Analysis
            if let ethical = bill.ethicalAnalysis {
                AnalysisSectionView(
                    title: "Ethical Considerations",
                    pros: ethical.pros,
                    cons: ethical.cons
                )
            }

            // Moral Analysis
            if let moral = bill.moralAnalysis {
                AnalysisSectionView(
                    title: "Moral Considerations",
                    pros: moral.pros,
                    cons: moral.cons
                )
            }
        }
        .padding()
    }
}

