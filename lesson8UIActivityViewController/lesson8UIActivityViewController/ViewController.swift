//
//  ViewController.swift
//  lesson8UIActivityViewController
//
//  Created by Karen Vardanian on 28.12.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var buttonShare = UIButton()
    var textField = UITextField()
    var activityViewController: UIActivityViewController? = nil
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
        createTextField()
        createButton ()
    }

    
    func createTextField()  {
        textField.frame = CGRect(x: 0, y: 0, width: 280, height: 30)
        textField.center = view.center
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.placeholder = "Enter text to share"
        textField.tintColor = .orange
        textField.textColor = .magenta
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 2
        textField.backgroundColor = .cyan
        textField.delegate = self
        
        view.addSubview(textField)
    }
    
    func createButton () {
        buttonShare = UIButton(type: UIButton.ButtonType.roundedRect)
        buttonShare.backgroundColor = .magenta
        buttonShare.frame = CGRect(x: 50, y: 350, width: 280, height: 44)
        buttonShare.setTitle("Share", for: .normal)
        buttonShare.tintColor = .black
        buttonShare.layer.borderWidth = 1
        buttonShare.layer.borderColor = UIColor.black.cgColor
        buttonShare.layer.cornerRadius = 20
        buttonShare.addTarget(self, action: #selector(handlerShare), for: .touchUpInside)
        
        view.addSubview(buttonShare)
    }
    
    
    //MARK: - ACTIVITY VIEW CONTROLLER
    @objc func handlerShare (paramSender: Any) {
        let text = textField.text
        
        if text?.count == 0 {
            let message = "First type a text, then push the button"
            let alertController  = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel)
            alertController.addAction(action)
            present(alertController, animated: true)
        }
        activityViewController = UIActivityViewController(activityItems: [textField.text ?? "nil"], applicationActivities: nil)
        present(activityViewController!, animated: true)
    }
    
    //MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}

