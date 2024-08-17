//
//  DetailsViewModel.swift
//  mvvmTest
//
//  Created by Karen Vardanian on 17.08.2024.
//

import Foundation


class DetailsViewModel {
    let name, username, email, phone, street, suite, city: String
    
    init(user: User) {
        self.name = user.name
        self.username = user.username
        self.email = user.email
        self.phone = user.phone
        self.street = user.address.street
        self.suite = user.address.suite
        self.city = user.address.city
    }
}
