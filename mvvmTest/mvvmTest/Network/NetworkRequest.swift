//
//  NetworkRequest.swift
//  mvvmTest
//
//  Created by Karen Vardanian on 17.08.2024.
//

import Foundation

class NetworkRequest {
    static let shared = NetworkRequest()
    private init() {}
    
    func getData(completionHandler: @escaping(Result<Data, NetworkError>) -> Void) {
        URLSession.shared.request(.users) { data, _, error in
            if error != nil {
                completionHandler(.failure(.urlError))
            } else {
                guard let data else { return }
                completionHandler(.success(data))
            }
        }
    }
}
