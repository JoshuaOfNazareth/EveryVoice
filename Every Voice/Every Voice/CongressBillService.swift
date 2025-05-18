//
//  CongressBillService.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import Foundation

struct CongressBillService {
    static func fetchRecentBills() async throws -> [CongressBill] {
        let urlString = "https://api.congress.gov/v3/bill?format=json&limit=10"
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }

        let (data, _) = try await URLSession.shared.data(from: url)

        let decoded = try JSONDecoder().decode(CongressBillArrayResponse.self, from: data)
        return decoded.bills
    }
}
