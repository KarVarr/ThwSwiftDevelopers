//
//  ViewController.swift
//  lesson19UIProgressVIew
//
//  Created by Karen Vardanian on 05.01.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private let myProgressView = UIProgressView()
    private let myButton = UIButton()
    private var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createProgressView(myProgressView)
        createButton(myButton)
        createTimer()
    }
    
    //MARK: - create timer
    func createTimer() {
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateProgressView), userInfo: nil, repeats: true)
    }
    
    @objc func updateProgressView () {
        if myProgressView.progress != 1.0 {
            myProgressView.progress += 0.1 / 1.0
        } else if myProgressView.progress == 1.0 {
            UIView.animate(withDuration: 0.7) {
                self.myButton.alpha = 1
                self.myButton.setTitle("Press Start", for: .normal)
                self.myTimer.invalidate()
                self.view.backgroundColor = .cyan
            }
        }
    }
    
    //MARK: - Create elements
    
    func createProgressView(_ progressView: UIProgressView) {
        progressView.progressViewStyle = .bar
        progressView.frame = CGRect(x: view.center.x, y: view.center.y, width: 150, height: 50)
        progressView.setProgress(0.0, animated: true)
        progressView.progressTintColor = .green
        progressView.trackTintColor = .gray
        progressView.tintColor = .magenta
        progressView.center = view.center
        view.addSubview(progressView)
    }
    
    func createButton(_ button: UIButton) {
        button.frame = CGRect(x: view.bounds.midX / 1.5, y: view.center.y + 100, width: 150, height: 50)
        button.setTitle("loading", for: .normal)
        button.setTitleColor(.magenta, for: .normal)
        button.backgroundColor = .black
        button.alpha = 0.8
        button.layer.cornerRadius = 8
        view.addSubview(button)
        
    }
    
}

