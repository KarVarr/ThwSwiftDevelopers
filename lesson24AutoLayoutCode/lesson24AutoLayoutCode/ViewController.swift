//
//  ViewController.swift
//  lesson24AutoLayoutCode
//
//  Created by Karen Vardanian on 07.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var viewRed: UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }
    
    var viewBlue: UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }
    
    var viewGreen: UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        view.addSubview(viewGreen)
        createViewRedConstraint()
        createViewBlueConstraint()
    }
    
    func createViewRedConstraint() {
        viewRed.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewRed.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewRed.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewRed.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func createViewBlueConstraint() {
        viewBlue.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        viewBlue.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewBlue.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewBlue.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func createViewGreenConstraint() {
        viewGreen.rightAnchor.constraint(equalTo: viewBlue.rightAnchor).isActive = true
        viewGreen.leftAnchor.constraint(equalTo: viewRed.leftAnchor).isActive = true
        viewGreen.bottomAnchor.constraint(equalTo: viewRed.topAnchor, constant: -20).isActive = true
        viewGreen.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    
    
}

