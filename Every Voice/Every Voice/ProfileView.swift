//
//  ProfileView.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Your Info")) {
                    Text("User: Jane Doe")
                    Text("Preferred Topics: Healthcare, Voting Rights")
                }

                Section(header: Text("Saved Bills")) {
                    NavigationLink("See Saved Bills", destination: SavedBillsView())
                }

                Section {
                    Button("Log Out", role: .destructive) {
                        // handle logout
                    }
                }
            }
            .navigationTitle("Profile")
        }
    }
}

