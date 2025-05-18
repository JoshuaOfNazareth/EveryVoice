//
//  OfficialsView.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import SwiftUI

struct OfficialsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("President")) {
                    NavigationLink(destination: PresidentDetailView()) {
                        Label("Current President", systemImage: "globe.europe.africa")
                    }
                }

                Section(header: Text("Your Representatives")) {
                    NavigationLink(destination: RepresentativesListView()) {
                        Label("View Representatives", systemImage: "person.3.fill")
                    }
                }
            }
            .navigationTitle("Officials")
            .listStyle(InsetGroupedListStyle())
        }
    }
}

