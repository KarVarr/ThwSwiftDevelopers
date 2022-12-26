//
//  ViewController.swift
//  UISwitch
//
//  Created by Karen Vardanian on 26.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwitch = UISwitch()
    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.frame = CGRect(x: 200, y: 200, width: 200, height: 50)
        myLabel.text = "Change the switch"
        myLabel.textColor = .red
        myLabel.font = UIFont(name: "Georgia", size: 20)
        view.addSubview(myLabel)
        
        mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
        view.addSubview(mySwitch)
        
        mySwitch.setOn(true, animated: true)
        
    
        mySwitch.addTarget(self, action: #selector(switchChange(peramTarget:)), for: .valueChanged)
       
    }
    
    @objc func switchChange(peramTarget: UISwitch) {
        if  mySwitch.isOn {
            myLabel.text =  "I'm is on"
        } else {
            myLabel.text =  "I'm is off"
        }
    }
        
        
        
        
    
}

