//
//  SampleBIlls.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/16/25.
//


import Foundation

let sampleBills: [Bill] = [
    Bill(
        title: "Healthcare Reform Act",
        sponsor: "Rep. Jane Doe",
        summary: "This bill proposes major reforms to the U.S. healthcare system.",
        fullTextUrl: "https://example.com/bill/healthcare-reform",
        dateIntroduced: "2024-01-15",  // string format, not Date
        powerAnalysis: PowerAnalysis(citizens: 35, corporations: 50, government: 15),
        powerAnalysisSummary: "Corporations receive most of the benefit.",
        plainLanguageExplanation: "The bill is meant to improve access to healthcare for middle-income families.",
        constitutionalAnalysis: nil,
        ethicalAnalysis: nil,
        moralAnalysis: nil
    )
]
