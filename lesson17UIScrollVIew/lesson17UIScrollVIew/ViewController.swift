//
//  ViewController.swift
//  lesson17UIScrollVIew
//
//  Created by Karen Vardanian on 04.01.2023.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    let image1 = UIImage(named: "1")
    let image2 = UIImage(named: "2")
    let image3 = UIImage(named: "3")
    
//    var myImageView: UIImageView {
//        var imageView = UIImageView()
//        imageView = UIImageView(image: image)
//        imageView.contentMode = .scaleAspectFit
//        imageView.clipsToBounds = true
//        //imageView.frame = CGRect(x: 0, y: 0, width: 250, height: 300)
//        //imageView.center = view.center
//        return imageView
//    }
    
//    var myScrollView : UIScrollView {
//        let scroll = UIScrollView()
//        scroll.frame = self.view.bounds
//        scroll.addSubview(myImageView)
//        scroll.contentSize = self.myImageView.bounds.size
//        scroll.delegate = self
//
//        return scroll
//    }
    
    var myScrollView = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        // Do any additional setup after loading the view.
        let scrollViewRect = self.view.bounds
        myScrollView = UIScrollView(frame: scrollViewRect)
        myScrollView.isPagingEnabled = false
        myScrollView.contentSize = CGSize(width: scrollViewRect.size.width * 3, height: scrollViewRect.size.height)
        view.addSubview(myScrollView)
        
        var imageViewRect = self.view.bounds
        let imageView = self.newImageViewWithImage(paramImage: image1!, paramFrame: imageViewRect)
        myScrollView.addSubview(imageView)
        
        imageViewRect.origin.x += imageViewRect.size.width
        let imageView2 = self.newImageViewWithImage(paramImage: image2!, paramFrame: imageViewRect)
        myScrollView.addSubview(imageView2)
        
        imageViewRect.origin.x += imageViewRect.size.width
        let imageView3 = self.newImageViewWithImage(paramImage: image3!, paramFrame: imageViewRect)
        myScrollView.addSubview(imageView3)
        
        
    }
    
    func newImageViewWithImage(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
        
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
        
    }
    
    
    
    
    
    
    //MARK: - DELEGATE
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("scroll beginning")
//        print(scrollView.contentOffset.y)
//        self.myScrollView.alpha = 0.10
//    }
//
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        print ("after scrolling")
//
//        self.myScrollView.alpha = 1.0
//
//    }
//
//    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        print("callback alpha to 1")
//        self.myImageView.alpha = 1.0
//    }


}

