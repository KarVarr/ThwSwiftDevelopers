//
//  SecondViewController.swift
//  lesson9UINavigationViewControll
//
//  Created by Karen Vardanian on 29.12.2022.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "THE Second View"
        view.backgroundColor = .cyan
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }
    
    @objc func goBack() {
        //navigationController?.popViewController(animated: true)
        var currentControllerArray = navigationController?.viewControllers
        currentControllerArray?.removeLast()
        
        //navigationController?.viewControllers = currentControllerArray ?? currentControllerArray!
        if let newController = currentControllerArray {
            navigationController?.viewControllers = newController
        }
    }


}
