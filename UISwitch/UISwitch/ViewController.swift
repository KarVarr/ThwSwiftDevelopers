//
//  ViewController.swift
//  UISwitch
//
//  Created by Karen Vardanian on 26.12.2022.
//

import UIKit

class ViewController: UIViewController {

    let mySwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
        view.addSubview(mySwitch)
    }


}

