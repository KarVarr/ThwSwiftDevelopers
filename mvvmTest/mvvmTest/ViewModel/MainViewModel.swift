//
//  MainViewModel.swift
//  mvvmTest
//
//  Created by Karen Vardanian on 15.08.2024.
//

import Foundation

class MainViewModel {
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return 10
    }
    
    func getUsers() {
        NetworkDataFetch.shared.fetchUsers { users, error in
            if error != nil {
                print("notify user")
            } else if let users {
                print(users.count)
            }
        }
    }
}
