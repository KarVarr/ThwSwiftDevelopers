//
//  ViewController.swift
//  lesson25UITableView
//
//  Created by Karen Vardanian on 07.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //    var myTableView = UITableView()
    //    let identifier = "MyCell"
    //    let array = Array(repeating: "777", count: 10)
    //
    //MARK: - storyboard
    @IBOutlet weak var myTableView: UITableView!
    
    let identifier = "myCell"
    var array = Array(repeating: "777", count: 10)
    var myPasteBoard = UIPasteboard.general
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .magenta
        // Do any additional setup after loading the view.
        
        //createTable()
        
    }
    
    
    @IBAction func editTabelAction(_ sender: Any) {
        myTableView.isEditing = !myTableView.isEditing
    }
    
    
    
    //    func createTable() {
    //        self.myTableView = UITableView(frame: view.bounds, style: .plain)
    //        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
    //
    //        self.myTableView.delegate = self
    //        self.myTableView.dataSource = self
    //
    //        myTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    //        view.addSubview(myTableView)
    //    }
    //
    //MARK: - DataSource
    //    func numberOfSections(in tableView: UITableView) -> Int {
    //        return 3
    //    }
    
    //    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        return array.count
    //    }
    //
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    //        let number = array[indexPath.row]
    //        cell.textLabel?.text = number
    
    //        switch indexPath.section {
    //        case 0:
    //            cell.backgroundColor = .magenta
    //            cell.accessoryType = .detailButton
    //        case 1:
    //            cell.backgroundColor = .cyan
    //            cell.accessoryType = .disclosureIndicator
    //        case 2:
    //            cell.backgroundColor = .orange
    //            cell.accessoryType = .checkmark
    //
    //        default:
    //            break
    //        }
    //
    //        return cell
    //    }
    
    //MARK: - Delegate
    //    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    //        return 70.0
    //    }
    //
    //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        print(array[indexPath.row])
    //    }
    
    
    
    //    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
    //        let onerCell = tableView.cellForRow(at: indexPath)
    //    }
    
    
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        let number = array[indexPath.row]
        cell.textLabel?.text = number
        
        return cell
    }
    
    //MARK: - delete cell
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            array.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .top)
        }
    }
    
    //MARK: - move cell
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let item = array[sourceIndexPath.row]
        array.remove(at: sourceIndexPath.row)
        array.insert(item, at: destinationIndexPath.row)
    }
    
    //MARK: - copy cell
    func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
        return true
        
    }
    func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.copy (_:) ) {
            return  true
        } else {
            return false
        }
    }
    
    func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {
        let cell = tableView.cellForRow(at: indexPath)
        myPasteBoard.string = cell!.textLabel?.text
        print("copy was make it")
        
    }
    
    
    
    
    
    
}
