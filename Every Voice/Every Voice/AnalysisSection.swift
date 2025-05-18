import SwiftUI

    struct AnalysisSection: Codable, Hashable {
    let title: String
    let pros: [String]
    let cons: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.title3)
                .bold()
                .padding(.bottom, 4)

            if !pros.isEmpty {
                Text("Pros:")
                    .font(.subheadline)
                    .foregroundColor(.green)
                    .bold()
                ForEach(pros, id: \.self) {
                    Text("• \($0)").font(.body)
                }
            }

            if !cons.isEmpty {
                Text("Cons:")
                    .font(.subheadline)
                    .foregroundColor(.red)
                    .bold()
                    .padding(.top, 4)
                ForEach(cons, id: \.self) {
                    Text("• \($0)").font(.body)
                }
            }
        }
        .padding()
        .background(Color(UIColor.secondarySystemGroupedBackground))
        .cornerRadius(10)
    }
}
