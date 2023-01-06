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
        createGestureRecognizer()
        createSmallSquareView()
        createAnchorView()
        createAnimationAndBehaviors()
    }
    
    //create a square and a little one witch inside the big one
    func createSmallSquareView() {
        squareView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        squareView.backgroundColor = .green
        squareView.center = view.center
        squareViewAnchorView = UIView(frame: CGRect(x: 50, y: 0, width: 20, height: 20))
        squareViewAnchorView.backgroundColor = .brown
        squareView.addSubview(squareViewAnchorView)
        view.addSubview(squareView)
    }

    // view with point
    
    func createAnchorView() {
        anchorView = UIView(frame: CGRect(x: 120, y: 120, width: 20, height: 20))
        anchorView.backgroundColor = .red
        view.addSubview(anchorView)
    }
    
    //create registration gesture
    func createGestureRecognizer() {
        let panGesturesRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan(paramPan:)))
        view.addGestureRecognizer(panGesturesRecognizer)
    }
    //finger for red square
    @objc func handlePan(paramPan: UIPanGestureRecognizer) {
        let tapPoint = paramPan.location(in: view)
        attachmentBehavior?.anchorPoint = tapPoint
        anchorView.center = tapPoint
    }
    
    // create collision and attachment
    func createAnimationAndBehaviors() {
        animator = UIDynamicAnimator(referenceView: view)
        //collision
        let collision = UICollisionBehavior(items: [squareView])
        collision.translatesReferenceBoundsIntoBoundary = true
        attachmentBehavior = UIAttachmentBehavior(item: squareView, attachedToAnchor: anchorView.center)
        animator.addBehavior(collision)
        animator.addBehavior(attachmentBehavior!)
    }
    
    
    
}

