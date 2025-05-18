//
//  MediaArticle.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/16/25.
//

import Foundation

struct MediaArticle: Identifiable, Codable, Hashable {
    var id = UUID()
    var title: String
    var sourceName: String
    var publicationDate: String
    var summary: String
    var imageUrl: URL?
    var articleUrl: URL
    var category: String
    var creator: [String]?

    // For advanced AI analysis
    var alignmentLabel: String // e.g. "Left", "Right", "Neutral"
    var powerAnalysis: PowerAnalysis
    var aiSummary: String?
    var critique: String?
    var factCheck: String?
}
