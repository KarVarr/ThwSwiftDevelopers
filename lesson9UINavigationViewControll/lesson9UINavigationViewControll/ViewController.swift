//
//  ViewController.swift
//  lesson9UINavigationViewControll
//
//  Created by Karen Vardanian on 29.12.2022.
//

import UIKit

class ViewController: UIViewController {

    var displaySecondButton : UIButton {
        var button = UIButton()
        
        button = UIButton(type: .system)
        button.setTitle("SecondVC", for: .normal)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(performDisplaySecondVC(parametrSender:)), for: .touchUpInside)
        
        return button
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "First VC"
        view.backgroundColor = .magenta
        
        view.addSubview(displaySecondButton)
    }
    
    @objc func performDisplaySecondVC(parametrSender : Any) {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
        
    }


}

