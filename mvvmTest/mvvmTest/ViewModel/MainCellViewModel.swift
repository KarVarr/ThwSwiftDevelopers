//
//  MainCellViewModel.swift
//  mvvmTest
//
//  Created by Karen Vardanian on 17.08.2024.
//

import Foundation


class MainCellViewModel {
    var name: String
    var email: String
    
    init(_ user: User) {
        self.name = user.name
        self.email = user.email
    }
}
