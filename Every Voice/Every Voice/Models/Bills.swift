//
//  Models:Bills.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/16/25.
//

import SwiftUI

struct PowerAnalysis: Codable, Hashable {
    var citizens: Int
    var corporations: Int
    var government: Int
}

// Removed duplicate AnalysisSection struct. Now located in AnalysisSection.swift

struct Bill: Identifiable, Codable, Hashable {
    var id = UUID()
    var title: String
    var sponsor: String
    var summary: String
    var fullTextUrl: String?
    var dateIntroduced: String
    var powerAnalysis: PowerAnalysis
    var powerAnalysisSummary: String?
    var plainLanguageExplanation: String?
    var constitutionalAnalysis: AnalysisSection?
    var ethicalAnalysis: AnalysisSection?
    var moralAnalysis: AnalysisSection?
}
