//
//  ViewController.swift
//  lesson3Alert
//
//  Created by Karen Vardanian on 25.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showButton(_ sender: Any) {
//        let alertController = UIAlertController(title: "Error", message: "Warning", preferredStyle: .alert)
//        let action = UIAlertAction(title: "OK", style: .default) {(action) in
//            let text = alertController.textFields?.first?.text
//            print(text ?? "Nil!!!")
//    }
//
//        alertController.addTextField(configurationHandler: nil)
//        alertController.addAction(action)
//        present(alertController, animated: true)
        hiLabel.text = "Hi, "
        alert(title: "Name", message: "Whats Your Name?", style: .alert)
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default) {(action) in
            let text = alertController.textFields?.first?.text
            self.hiLabel.text! += text ?? "Error"
    }
        
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        present(alertController, animated: true)
    }
    
    
}

