//
//  SearchView.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import SwiftUI

struct SearchView: View {
    @State private var query: String = ""

    var body: some View {
        NavigationView {
            VStack {
                TextField("Search bills, reps, or topics...", text: $query)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Spacer()

                Text("Search Results for '\(query)'")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Spacer()
            }
            .navigationTitle("Search")
        }
    }
}

