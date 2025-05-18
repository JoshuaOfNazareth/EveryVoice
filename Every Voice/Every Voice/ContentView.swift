import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeTabView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }

            ExploreBillsView()
                .tabItem {
                    Label("Bills", systemImage: "doc.text.magnifyingglass")
                }

            OfficialsView()
                .tabItem {
                    Label("Officials", systemImage: "building.2.fill")
                }

            MediaFeedView()
                .tabItem {
                    Label("Media", systemImage: "newspaper")
                }
        }

        }
    }



