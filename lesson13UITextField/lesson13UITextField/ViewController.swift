//
//  ViewController.swift
//  lesson13UITextField
//
//  Created by Karen Vardanian on 31.12.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var myTextField: UITextField {
        let textField = UITextField()
        textField.frame = CGRect(x: 0, y: 0, width: 200, height: 31)
        textField.center = view.center
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        textField.textAlignment = .center
//        textField.layer.borderWidth = 2
//        textField.layer.borderColor = UIColor.white.cgColor
//        textField.layer.cornerRadius = 5
        textField.placeholder = "text me"
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        //textField.becomeFirstResponder()
        //textField.resignFirstResponder()
        return textField
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .cyan
        view.addSubview(myTextField)
        
        myTextField.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(textDidChangeNotification(param:)), name: UITextField.textDidChangeNotification, object: nil)
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { nc in
            self.view.frame.origin.y = -50
        }
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { nc in
            self.view.frame.origin.y = 0.0
        }
    }
    
    //MARK: - Notification
    
    @objc func textDidChangeNotification(param: NSNotification) {
        print("textDidChangeNotification \(param)")
    }
   
    
    //MARK: - UITextField
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
         
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("h")
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("clear")
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("return")
        return true
    }


}

