//
//  ViewController.swift
//  lesson21UIDynamicAnimator
//
//  Created by Karen Vardanian on 06.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //let squareView = UIView()
   // var squareViews = [UIDynamicItem]()
    var squareView = UIView()
    var animator = UIDynamicAnimator()
    var pushBehavior = UIPushBehavior()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //MARK: - third  part
        
        createGestureRecogniser ()
        createSmallSquare()
        createAnimationBehaviors ()
        
        
        
        //MARK: - second part
//        //make a view
//        let numberOfView = 2
//        squareViews.reserveCapacity(numberOfView)
//        let colors = [UIColor.red, UIColor.green]
//        var currentCenterPoint: CGPoint = view.center
//        let eachViewSize = CGSize(width: 50, height: 50)
//
//        for counter in 0..<numberOfView {
//            let newView = UIView(frame: CGRect(x: 0, y: 0, width: eachViewSize.width, height: eachViewSize.height))
//            newView.backgroundColor = colors[counter]
//            newView.center = currentCenterPoint
//            currentCenterPoint.y += eachViewSize.height + 10
//            view.addSubview(newView)
//            squareViews.append(newView)
//
//        }
//        //make an animation and gravity
//        animator = UIDynamicAnimator(referenceView: view)
//        let gravity = UIGravityBehavior(items: squareViews)
//        animator.addBehavior(gravity)
//
//        //make collision
//        let collision = UICollisionBehavior(items: squareViews)
//        collision.translatesReferenceBoundsIntoBoundary = true
//        collision.addBoundary(withIdentifier: "bottom" as NSCopying, from: CGPoint(x: 0.0, y: view.bounds.size.height - 100), to: CGPoint(x: view.bounds.size.width, y: view.bounds.size.height - 100 ))
//        collision.collisionDelegate = self
//        animator.addBehavior(collision)
        
        //MARK: - first part
//      //make a square
//        squareView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        squareView.backgroundColor = .green
//        squareView.center = view.center
//        view.addSubview(squareView)
//
//      //make an animation and gravity
//        animator = UIDynamicAnimator(referenceView: view)
//        let gravity = UIGravityBehavior(items: [squareView])
//        animator.addBehavior(gravity)
        
   }
    //make a square for the third part
    func createSmallSquare() {
        squareView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        squareView.backgroundColor = .green
        squareView.center = view.center
        view.addSubview(squareView)
    }
    
    //make a gesture
    func createGestureRecogniser () {
        let tapGestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(handlerTap(paramTap:)))
        view.addGestureRecognizer(tapGestureRecogniser)
    }
    
    //create collision and push for the view
    func createAnimationBehaviors () {
        animator = UIDynamicAnimator(referenceView: view)
        //create collision
        let collision = UICollisionBehavior(items: [squareView])
        collision.translatesReferenceBoundsIntoBoundary = true
        pushBehavior = UIPushBehavior(items: [squareView], mode: .continuous)
        animator.addBehavior(collision)
        animator.addBehavior(pushBehavior)
    }
    
    
    @objc func handlerTap(paramTap: UITapGestureRecognizer) {
        let tapPoint: CGPoint = paramTap.location(in: view)
        let squareViewCenterPoint: CGPoint = squareView.center
        let deltaX: CGFloat = tapPoint.x - squareViewCenterPoint.x
        let deltaY: CGFloat = tapPoint.y - squareViewCenterPoint.y
        let angel: CGFloat = atan2(deltaY, deltaX)
        pushBehavior.angle = angel
        
        let distanceBetweenPints: CGFloat = sqrt(pow(deltaX, 2.0) + pow(deltaY, 2.0))
        pushBehavior.magnitude = distanceBetweenPints / 200
    }
}


//extension ViewController: UICollisionBehaviorDelegate {
//    func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, at p: CGPoint) {
//        let identifier = identifier as? String
//        let kbottomBoundary = "bottom"
//        if identifier == kbottomBoundary {
//            UIView.animate(withDuration: 1.0, animations: {
//                let view = item as? UIView
//                view?.backgroundColor = .red
//                view?.alpha = 0.0
//                view?.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
//            }, completion: {(finished) in
//                let view = item as? UIView
//                behavior.removeItem(item)
//                view?.removeFromSuperview()
//            })
//        }
//    }
//}


