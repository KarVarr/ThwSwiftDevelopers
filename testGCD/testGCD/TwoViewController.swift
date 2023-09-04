//
//  TwoViewController.swift
//  testGCD
//
//  Created by Karen Vardanian on 04.09.2023.
//

import UIKit

class TwoViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .cyan
        title = "VC 2"
        
        DispatchQueue.global(qos: .userInitiated).async {
            
            let imageURL: URL = URL(string: "https://kartinkof.club/uploads/posts/2022-05/1652994823_2-kartinkof-club-p-kartinka-serdtse-schastya-2.jpg")!
            
            if let data = try? Data(contentsOf: imageURL) {
                DispatchQueue.main.async { [unowned self] in
                    
                    self.image.image = UIImage(data: data)
                }
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    deinit {
        print("Deinit")
    }
    
    
    
}
