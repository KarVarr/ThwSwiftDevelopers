//
//  ViewController.swift
//  lesson7UISegmentControl
//
//  Created by Karen Vardanian on 27.12.2022.
//

import UIKit

class ViewController: UIViewController {
    enum SegmentItems : String {
        case one = "One"
        case two = "Two"
        case three = "Three"
    }
    
    let menuSegment = [SegmentItems.one.rawValue, SegmentItems.two.rawValue,SegmentItems.three.rawValue]
    let imageArray = [UIImage(named: "White1"), UIImage(named: "White2"), UIImage(named: "White3")]
    
    
    var segmentControl : UISegmentedControl {
        var segment = UISegmentedControl()
        segment = UISegmentedControl(items: menuSegment)
        segment.frame = CGRect(x: 100, y: 500, width: 200, height: 30)
        segment.backgroundColor = .cyan
        return segment
    }
    
    var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        imageView.center = view.center
        imageView.image = imageArray[1]
        
        
        // Do any additional setup after loading the view.
        view.addSubview(segmentControl)
        view.addSubview(imageView)
        segmentControl.addTarget(self, action: #selector(changeImage), for: .valueChanged)
        
    }
    
    @objc func changeImage(sender: UISegmentedControl)  {
        if sender == segmentControl {
            imageView.image = imageArray[sender.numberOfSegments]
            
            print(sender.titleForSegment(at: sender.selectedSegmentIndex) ?? "")
        }
    }
    



}

