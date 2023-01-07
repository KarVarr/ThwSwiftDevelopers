//
//  MyTableViewController.swift
//  lesson26UITableViewController
//
//  Created by Karen Vardanian on 07.01.2023.
//

import UIKit

class MyTableViewController: UITableViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var isPushSwitch: UISwitch!
    @IBOutlet weak var sexSegment: UISegmentedControl!
    
    let userDefaults = UserDefaults.standard
    //var itemArray = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        let item = Model(name: "Bob", lastName: "White")
//        itemArray.append(item)
       
        //MARK: - load
        if let name = userDefaults.object(forKey: "name") {
            nameTextField.text = name as? String
        }
        if let last = userDefaults.object(forKey: "lastName") {
            lastNameTextField.text = last as? String
        }
        if let isSwitch = userDefaults.object(forKey: "switch") {
            isPushSwitch.isOn = isSwitch as! Bool
            
        }
        if let sex = userDefaults.object(forKey: "segment") {
            sexSegment.selectedSegmentIndex = sex as! Int
        }
        
    }

    
    @IBAction func saveButton(_ sender: UIButton) {
        userDefaults.setValue(nameTextField.text, forKey: "name")
        userDefaults.setValue(lastNameTextField, forKey: "lastName")
        userDefaults.set(isPushSwitch, forKey: "switch")
        userDefaults.set(sexSegment.selectedSegmentIndex, forKey: "segment")
        print("Save")
        lastNameTextField.resignFirstResponder()
    }
    
    
    
    
    
    // MARK: - Table view data source

 
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return itemArray.count
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyTableViewCell {
//            let item = itemArray[indexPath.row]
//            //cell.nameLabel.text = item.name
//            //cell.detailLabel.text = item.lastName
//            cell.refresh(item)
//
//        return cell
//        }
//        return UITableViewCell()
//    }
//
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//         100
//    }
  
}
