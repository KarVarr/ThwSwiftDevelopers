//
//  ViewController.swift
//  lesson21UIDynamicAnimator
//
//  Created by Karen Vardanian on 06.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //let squareView = UIView()
    var squareViews = [UIDynamicItem]()
    var animator = UIDynamicAnimator()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //make a view
        let numberOfView = 2
        squareViews.reserveCapacity(numberOfView)
        let colors = [UIColor.red, UIColor.green]
        var currentCenterPoint: CGPoint = view.center
        let eachViewSize = CGSize(width: 50, height: 50)
        
        for counter in 0..<numberOfView {
            let newView = UIView(frame: CGRect(x: 0, y: 0, width: eachViewSize.width, height: eachViewSize.height))
            newView.backgroundColor = colors[counter]
            newView.center = currentCenterPoint
            currentCenterPoint.y += eachViewSize.height + 10
            view.addSubview(newView)
            squareViews.append(newView)
            
        }
        //make an animation and gravity
        animator = UIDynamicAnimator(referenceView: view)
        let gravity = UIGravityBehavior(items: squareViews)
        animator.addBehavior(gravity)
        
        //make collision
        let collision = UICollisionBehavior(items: squareViews)
        collision.translatesReferenceBoundsIntoBoundary = true
        collision.addBoundary(withIdentifier: "bottom" as NSCopying, from: CGPoint(x: 0.0, y: view.bounds.size.height - 100), to: CGPoint(x: view.bounds.size.width, y: view.bounds.size.height - 100 ))
        collision.collisionDelegate = self
        animator.addBehavior(collision)
        
        
//        //make a square
//        squareView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        squareView.backgroundColor = .green
//        squareView.center = view.center
//        view.addSubview(squareView)
//
//        //make an animation and gravity
//        animator = UIDynamicAnimator(referenceView: view)
//        let gravity = UIGravityBehavior(items: [squareView])
//        animator.addBehavior(gravity)
        
   }
    
}


extension ViewController: UICollisionBehaviorDelegate {
    func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, at p: CGPoint) {
        let identifier = identifier as? String
        let kbottomBoundary = "bottom"
        if identifier == kbottomBoundary {
            UIView.animate(withDuration: 1.0, animations: {
                let view = item as? UIView
                view?.backgroundColor = .red
                view?.alpha = 0.0
                view?.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            }, completion: {(finished) in
                let view = item as? UIView
                behavior.removeItem(item)
                view?.removeFromSuperview()
            })
        }
    }
}
