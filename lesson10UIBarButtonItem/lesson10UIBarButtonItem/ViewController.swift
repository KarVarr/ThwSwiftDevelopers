//
//  ViewController.swift
//  lesson10UIBarButtonItem
//
//  Created by Karen Vardanian on 29.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var activityVC: UIActivityViewController? = nil

    fileprivate func iconImage() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "icon")
        imageView.image = image
        
        navigationItem.titleView = imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .orange
        
        // refactor extract to method
        iconImage()
        
        //switch for navigation button
        let simpleSwitch = UISwitch()
        simpleSwitch.isOn = true
        simpleSwitch.addTarget(self, action: #selector(switchChange(param:)), for: .valueChanged)
        
        // top navigation item
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(performAdd(param:)))
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: simpleSwitch)
        
        
        //segmentCOntroller (! !! !!!)
        let items = ["on", "off"]
        let segmentController = UISegmentedControl(items: items)
        //segmentController.isMomentary = true  
        segmentController.center = view.center
        segmentController.addTarget(self, action: #selector(segmentContolerTapped(param:)), for: .valueChanged)
        view.addSubview(segmentController)
    }
    
    @objc func performAdd(param: Any) {
        print("add click")
        activityVC = UIActivityViewController(activityItems: [param], applicationActivities: nil)
        present(activityVC!, animated: true)
    }
    
    @objc func switchChange (param: UISwitch) {
        param.isOn ? print("Switch is ON") : print("Switch in OFF")
    }
    
    @objc func segmentContolerTapped(param: UISegmentedControl) {
        (param.selectedSegmentIndex != 0) ? print("OFF") : print("ON")
    }

}

