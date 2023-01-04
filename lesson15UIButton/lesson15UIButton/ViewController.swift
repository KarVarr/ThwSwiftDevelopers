//
//  ViewController.swift
//  lesson15UIButton
//
//  Created by Karen Vardanian on 03.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    //    @IBOutlet weak var button: UIButton!
    
    let normalImage = UIImage(named: "1")
    let highLightedImage = UIImage(named:  "2")
    
    var button : UIButton {
        let button = UIButton()
        button.frame = CGRect(x: 110, y: 200, width: 100, height: 44)
        button.setTitle("Press", for: .normal)
        button.setTitle("I'm pressed", for: .highlighted)
        button.backgroundColor = .magenta
        button.setBackgroundImage(normalImage, for: .normal)
        button.setBackgroundImage(highLightedImage, for: .highlighted)
        button.layer.cornerRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
        button.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        button.addTarget(self, action: #selector(buttonIsTapped), for: .touchUpInside)
        return button
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //        button.layer.shadowColor = UIColor.black.cgColor
        //        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        //        button.layer.shadowOpacity = 1.0
        //        button.layer.shadowRadius = 0.0
        //        button.layer.masksToBounds = false
        //        button.layer.cornerRadius = 4.0
        
        view.addSubview(button)
    }
    
    
    
    @objc func buttonPressed(sender: UIButton) {
        print("Button is pressed")
    }
    
    @objc func buttonIsTapped(sender: UIButton) {
        print("Button is tapped")
    }
    
    //    @IBAction func buttonAction(_ sender: UIButton) {
    //        if sender.tag == 1 {
    //            print("button 1 tapped")
    //            button.layer.shadowColor = UIColor.black.cgColor
    //            button.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
    //            button.layer.shadowOpacity = 0.5
    //            button.layer.shadowRadius = 0.0
    //            button.layer.masksToBounds = false
    //            button.layer.cornerRadius = 4.0
    //        }
    //    }
}

