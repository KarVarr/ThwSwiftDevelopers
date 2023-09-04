//
//  ViewController.swift
//  testGCD
//
//  Created by Karen Vardanian on 04.09.2023.
//

import UIKit

class MyViewController : UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    override func loadView() {
        super.loadView()
        title = "VC 1"
        view.backgroundColor = .lightGray
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initButton()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("didDisapear")
    }
    
    @IBAction func pressAction() {
        
    }
    
    func initButton() {
//        button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        button.setTitle("Press", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.center = view.center
        button.backgroundColor = .orange
        button.layer.cornerRadius = 25
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        view.addSubview(button)
    }
}





