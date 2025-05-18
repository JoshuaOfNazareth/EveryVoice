//
//  HomeTabView.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Top Bar with Logo + Profile Button
                    HStack {
                        Image("everyvoice_logo")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .clipShape(RoundedRectangle(cornerRadius: 6))

                        Spacer()

                        NavigationLink(destination: ProfileView()) {
                            Image(systemName: "person.circle")
                                .font(.title2)
                        }
                    }
                    .padding(.horizontal)

                    // Quick Nav Links
                    VStack(spacing: 16) {
                        NavigationLink(destination: ExploreBillsView()) {
                            HomeQuickLink(icon: "doc.text.magnifyingglass", label: "Explore Bills")
                        }
                        NavigationLink(destination: MediaFeedView()) {
                            HomeQuickLink(icon: "newspaper", label: "Track Media")
                        }
                        NavigationLink(destination: OfficialsView()) {
                            HomeQuickLink(icon: "building.2", label: "Your Officials")
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top)
            }
            .navigationBarHidden(true)
        }
    }
}

