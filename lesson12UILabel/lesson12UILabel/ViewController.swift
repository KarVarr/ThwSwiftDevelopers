//
//  ViewController.swift
//  lesson12UILabel
//
//  Created by Karen Vardanian on 30.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var label : UILabel {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        label.text = "The Swift Developers"
        label.font = UIFont.boldSystemFont(ofSize: 34)
        label.textColor = .orange
        label.shadowColor = .lightGray
        label.shadowOffset = CGSize(width: 1, height: 1)
        label.center = view.center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.sizeToFit()
        return label
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
        view.addSubview(label)
    }
    

}

