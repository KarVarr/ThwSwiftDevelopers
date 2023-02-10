//
//  ViewController.swift
//  MVP-level One
//
//  Created by Karen Vardanian on 10.02.2023.
//

import UIKit

class MainViewController: UIViewController {
//MARK: - IBOutlet
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: MainViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    //MARK: - IBAction
    @IBAction func didTapButtonAction(_ sender: Any) {
        self.presenter.showGreeting()
    }

}

extension MainViewController: MainViewProtocol {
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
    
    
}

