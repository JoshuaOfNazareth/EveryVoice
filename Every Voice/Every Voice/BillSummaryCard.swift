import SwiftUI

struct BillSummaryCard: View {
    let bill: Bill

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("AI Simplified Summary")
                .font(.headline)

            Text(bill.plainLanguageExplanation ?? "No simplified explanation available.")
                .font(.body)
        }
        .padding()
    }
}
