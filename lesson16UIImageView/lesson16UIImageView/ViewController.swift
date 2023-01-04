//
//  ViewController.swift
//  lesson16UIImageView
//
//  Created by Karen Vardanian on 04.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let macBookImage = UIImage(named: "goo")
    var myImageView : UIImageView {
        var image = UIImageView()
        image = UIImageView(image: macBookImage)
        image.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
        image.center = view.center
        image.contentMode = .scaleAspectFit
        image.layer.borderWidth = 1
        image.layer.borderColor = UIColor.magenta.cgColor
        image.layer.cornerRadius = 5
        image.clipsToBounds = true
      
        return image
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(myImageView)
        
//        myImageView.layer.borderWidth = 2
//        myImageView.layer.borderColor = UIColor.magenta.cgColor
//        myImageView.layer.cornerRadius = 8
//        myImageView.layer.shadowRadius = 10
//        myImageView.layer.shadowColor = UIColor.gray.cgColor
//        myImageView.layer.shadowOpacity = 0.7
//        myImageView.layer.shadowOffset = .zero
        
        
        
    }


}

