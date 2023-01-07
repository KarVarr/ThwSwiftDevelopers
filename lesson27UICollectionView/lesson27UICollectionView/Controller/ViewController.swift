//
//  ViewController.swift
//  lesson27UICollectionView
//
//  Created by Karen Vardanian on 08.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemMenuArray: [Menu] = {
        var blankMenu = Menu()
        blankMenu.name = "Coca-cola"
        blankMenu.imageName = "kola"
        
        var blankMenu2 = Menu()
        blankMenu.name = "Coffee"
        blankMenu.imageName = "coffee"
        
        return [blankMenu, blankMenu2]
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
   
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(itemMenuArray)
        return itemMenuArray.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? MenuCollectionViewCell {
            itemCell.menu = itemMenuArray[indexPath.row]
            return itemCell
        }
            return UICollectionViewCell()
    }
    
    
}
