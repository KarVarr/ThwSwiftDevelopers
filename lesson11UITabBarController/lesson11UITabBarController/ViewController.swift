//
//  ViewController.swift
//  lesson11UITabBarController
//
//  Created by Karen Vardanian on 30.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "First VC"
        var tabBarItem = UITabBarItem()
        
        tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        self.tabBarItem = tabBarItem
        
        view.backgroundColor = .orange
        
       
    }


}

