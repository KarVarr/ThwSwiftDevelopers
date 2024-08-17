//
//  MainViewModel.swift
//  mvvmTest
//
//  Created by Karen Vardanian on 15.08.2024.
//

import Foundation

class MainViewModel {
    var isLoading: Observable<Bool> = Observable(false)
    var cellDataSource: Observable<[MainCellViewModel]> = Observable(nil)
    var dataSource: [User]?
    
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return dataSource?.count ?? 0
    }
    
    func getUsers() {
        isLoading.value = true

        NetworkDataFetch.shared.fetchUsers {[weak self] users, error in
            guard let self else { return }
            self.isLoading.value = false
            if let users {
                self.dataSource = users
                mapCellData()
            }
        }
    }
    
    func mapCellData() {
        cellDataSource.value = dataSource?.compactMap({MainCellViewModel($0)})
    }
}
