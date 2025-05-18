import SwiftUI

struct AnalysisSectionView: View {
    let title: String
    let pros: [String]
    let cons: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.title3)
                .bold()

            if !pros.isEmpty {
                Text("Pros:")
                    .font(.subheadline)
                    .foregroundColor(.green)
                    .bold()
                ForEach(pros, id: \.self) {
                    Text("• \($0)")
                }
            }

            if !cons.isEmpty {
                Text("Cons:")
                    .font(.subheadline)
                    .foregroundColor(.red)
                    .bold()
                ForEach(cons, id: \.self) {
                    Text("• \($0)")
                }
            }
        }
        .padding()
        .background(Color(UIColor.secondarySystemGroupedBackground))
        .cornerRadius(8)
    }
}
