//
//  ViewController.swift
//  lesson25UITableView
//
//  Created by Karen Vardanian on 07.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myTableView = UITableView()
    let identifier = "MyCell"
    let array = Array(repeating: "777", count: 10)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        // Do any additional setup after loading the view.
        
        createTable()
        
    }
    
    func createTable() {
        self.myTableView = UITableView(frame: view.bounds, style: .plain)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        myTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(myTableView)
    }
    
    //MARK: - DataSource
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        let number = array[indexPath.row]
        cell.textLabel?.text = number
        
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
        
        return cell
    }
    
    //MARK: - Delegate
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(array[indexPath.row])
    }
    
    
    
//    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
//        let onerCell = tableView.cellForRow(at: indexPath)
//    }
    


}

