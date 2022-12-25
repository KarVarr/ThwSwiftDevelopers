//
//  ViewControllerTwo.swift
//  ViewControllers
//
//  Created by Karen Vardanian on 25.12.2022.
//

import UIKit

class ViewControllerTwo: UIViewController {

    
    
    override func loadView() {
        super.loadView()
        print("loadVIew")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLauoutSubviews")
    }

}
