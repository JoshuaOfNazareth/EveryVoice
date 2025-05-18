import SwiftUI

struct BillOverviewCard: View {
    let bill: Bill

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(bill.title)
                .font(.headline)

            Text("Sponsored by: \(bill.sponsor)")
                .font(.subheadline)
                .foregroundColor(.gray)

            Text(bill.summary)
                .font(.body)

            PowerPieChartView(segments: [
                PowerSegment(label: "Citizens", value: Double(bill.powerAnalysis.citizens), color: .white),
                PowerSegment(label: "Corporations", value: Double(bill.powerAnalysis.corporations), color: .blue),
                PowerSegment(label: "Government", value: Double(bill.powerAnalysis.government), color: .red)
            ])
            .frame(width: 150, height: 150)

            if let urlString = bill.fullTextUrl, let url = URL(string: urlString) {
                HStack {
                    Spacer()
                    Link("View Full Bill on Congress.gov", destination: url)
                        .font(.footnote)
                        .foregroundColor(.blue)
                }
            }
        }
        .padding()
    }
}
