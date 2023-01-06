//
//  ViewController.swift
//  lesson22UIDynamics
//
//  Created by Karen Vardanian on 06.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var squareView = UIView()
    var squareViewAnchorView = UIView()
    var anchorView = UIView()
    var animator = UIDynamicAnimator()
    var attachmentBehavior: UIAttachmentBehavior?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func createSmallSquareView() {
        squareView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        squareView.backgroundColor = .green
        squareView.center = view.center
        squareViewAnchorView = UIView(frame: CGRect(x: 60, y: 0, width: 20, height: 20))
        squareViewAnchorView.backgroundColor = .brown
        squareView.addSubview(squareViewAnchorView)
        view.addSubview(squareView)
    }


}

