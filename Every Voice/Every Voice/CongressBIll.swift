//
//  CongressBIll.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import Foundation

struct CongressBill: Identifiable, Codable {
    let id = UUID()
    let title: String
    let summary: String?
    let sponsor: String
    let fullTextUrl: String?
    let congress: String
    let dateIntroduced: String

    enum CodingKeys: String, CodingKey {
        case title
        case summary
        case sponsor = "sponsor_name"
        case fullTextUrl = "gpo_pdf_uri"
        case congress
        case dateIntroduced = "introduced_date"
    }
}


