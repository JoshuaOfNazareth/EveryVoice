//
//  AlertTopicCard.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import SwiftUI

struct AlertTopicCard: View {
    let topic: String

    var body: some View {
        HStack {
            Image(systemName: "bell.fill")
                .foregroundColor(.orange)
            Text("New bills or news related to \(topic)")
                .font(.footnote)
                .foregroundColor(.primary)
            Spacer()
        }
        .padding(12)
        .background(Color.yellow.opacity(0.15))
        .cornerRadius(10)
    }
}

