//
//  ViewController.swift
//  lesson14UITextView
//
//  Created by Karen Vardanian on 31.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var myTextView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .orange
        
        createTextView()
        
    }
    
    func createTextView () {
        myTextView = UITextView(frame: CGRect(x: 20, y: 100, width: view.bounds.width - 40, height: view.bounds.height / 2))
        myTextView.text = "hello Batman"
        myTextView.contentInset = UIEdgeInsets(top: 30, left: 10, bottom: 10, right: 10)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = .cyan
        view.addSubview(myTextView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myTextView.resignFirstResponder()
        print("you click here")
    }
    
    


}

