//
//  Users.swift
//  mvvmTest
//
//  Created by Karen Vardanian on 17.08.2024.
//

import Foundation


struct User: Codable {
    let name, username, email, phone: String
    let address: Address
}

// MARK: - Address
struct Address: Codable {
    let street, suite, city: String
}

