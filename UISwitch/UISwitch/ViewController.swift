//
//  ViewController.swift
//  UISwitch
//
//  Created by Karen Vardanian on 26.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwitch2 = UISwitch()
    let myLabel = UILabel()
    let myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
        myButton.backgroundColor = .red
        myButton.setTitle("Push", for: .normal)
        myButton.setTitle("Pull", for: .highlighted)
        myButton.setTitle("DIsablet", for: .disabled)
        
        view.addSubview(myButton)
        
        //MARK: - LABel
        myLabel.frame = CGRect(x: 200, y: 200, width: 200, height: 50)
        myLabel.text = "Change the switch"
        myLabel.textColor = .red
        myLabel.font = UIFont(name: "Georgia", size: 20)
        view.addSubview(myLabel)
        
        //MARK: - SWitch
        mySwitch2.frame = CGRect.zero
        mySwitch2.center = view.center
        view.addSubview(mySwitch2)
        
        mySwitch2.onTintColor = .red
        mySwitch2.thumbTintColor = .cyan
        
        mySwitch2.addTarget(self, action: #selector(switchChange(peramTarget:)), for: .valueChanged)
        
        mySwitch2.addTarget(self, action: #selector(isOn(target:)), for: .valueChanged)
        
    }
    
    @objc func switchChange(peramTarget: UISwitch) {
        if  mySwitch2.isOn {
            myLabel.text =  "I'm is on"
        } else {
            myLabel.text =  "I'm is off"
        }
    }
    
    @objc func isOn(target: UISwitch) {
        if target.isOn {
            myButton.isUserInteractionEnabled = true
        } else {
            myButton.isUserInteractionEnabled = false
        }
    }
    
    
    
    
}

