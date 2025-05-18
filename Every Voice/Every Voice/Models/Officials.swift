//
//  Officials.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/18/25.
//


import Foundation

// MARK: - Official Protocol

protocol Official: Identifiable, Codable, Hashable {
    var id: UUID { get }
    var name: String { get }
    var party: String { get }
    var role: String { get } // e.g., "President", "Senator", "House Rep"
    var state: String? { get } // Optional for President
    var district: String? { get } // Optional for reps
    var photoURL: String? { get }
}

// MARK: - President

struct President: Official {
    let id: UUID
    let name: String
    let party: String
    let role: String
    let photoURL: String?
    let state: String?
    let district: String?
    let executiveOrders: [ExecutiveOrder]

    init(
        id: UUID = UUID(),
        name: String,
        party: String,
        role: String = "President",
        photoURL: String? = nil,
        state: String? = nil,
        district: String? = nil,
        executiveOrders: [ExecutiveOrder] = []
    ) {
        self.id = id
        self.name = name
        self.party = party
        self.role = role
        self.photoURL = photoURL
        self.state = state
        self.district = district
        self.executiveOrders = executiveOrders
    }
}
// MARK: - Representative

struct ExecutiveOrder: Identifiable, Codable, Hashable {
    let id: UUID
    let title: String
    let summary: String
    let dateIssued: String
    let link: String?

    init(
        id: UUID = UUID(),
        title: String,
        summary: String,
        dateIssued: String,
        link: String? = nil
    ) {
        self.id = id
        self.title = title
        self.summary = summary
        self.dateIssued = dateIssued
        self.link = link
    }
}
