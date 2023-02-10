//
//  ModuleBuilder.swift
//  MVP-level One
//
//  Created by Karen Vardanian on 10.02.2023.
//

import UIKit


protocol Builder {
    static func createMainModule() -> UIViewController
    
}


class ModelBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let model = Person(firstName: "David", lastName: "Blane")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, person: model)
        
        view.presenter = presenter
        return view
    }
    
    
}
