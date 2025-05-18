//
//  ExploreBillsView.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/16/25.
//

import SwiftUI

struct ExploreBillsView: View {
    @State private var bills: [CongressBill] = []
    @State private var isLoading = true
    @State private var errorMessage: String?

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Header with logo and profile icon
                    HStack {
                        Image("everyvoice_logo")
                            .resizable()
                            .frame(width: 36, height: 36)
                            .padding(.leading, 8)

                        Spacer()

                        NavigationLink(destination: ProfileView()) {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.blue)
                        }
                        .padding(.trailing, 12)
                    }
                    .padding(.top, 10)

                    Text("Explore Bills")
                        .font(.largeTitle.bold())
                        .padding(.horizontal)

                    if isLoading {
                        ProgressView("Loading bills...")
                            .padding()
                    } else if let errorMessage = errorMessage {
                        Text("Error: \(errorMessage)")
                            .foregroundColor(.red)
                            .padding()
                    } else {
                        ForEach(bills) { bill in
                            BillRowCard(bill: bill)
                                .padding(.horizontal)
                        }
                    }
                }
            }
            .onAppear {
                loadBills()
            }
        }
    }

    func loadBills() {
        Task {
            do {
                let fetchedBills = try await CongressBillService.fetchRecentBills()
                DispatchQueue.main.async {
                    self.bills = fetchedBills
                    self.isLoading = false
                }
            } catch {
                DispatchQueue.main.async {
                    self.errorMessage = error.localizedDescription
                    self.isLoading = false
                }
            }
        }
    }
}
