//
//  SecondViewController.swift
//  lesson11UITabBarController
//
//  Created by Karen Vardanian on 30.12.2022.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
        navigationItem.title = "Second VC"
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        self.tabBarItem = tabBarItem
        
        
    }
    


}
