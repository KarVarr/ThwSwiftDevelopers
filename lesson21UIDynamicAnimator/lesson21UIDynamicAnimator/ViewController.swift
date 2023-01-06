//
//  ViewController.swift
//  lesson21UIDynamicAnimator
//
//  Created by Karen Vardanian on 06.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let squareView = UIView()
    var animator = UIDynamicAnimator()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //make a square
        squareView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        squareView.backgroundColor = .green
        squareView.center = view.center
        view.addSubview(squareView)
        
        //make an animation and gravity
        animator = UIDynamicAnimator(referenceView: view)
        let gravity = UIGravityBehavior(items: [squareView])
        animator.addBehavior(gravity)
    }
    
   
    


}

