//
//  HomeQuickLink.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import SwiftUI

struct HomeQuickLink: View {
    let icon: String
    let label: String

    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 28))
                .foregroundColor(.blue)
                .padding(12)
                .background(Color(UIColor.systemGray6))
                .clipShape(Circle())
            Text(label)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }
        .frame(width: 80)
    }
}

