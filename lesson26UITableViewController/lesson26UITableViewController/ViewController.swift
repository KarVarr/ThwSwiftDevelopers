//
//  ViewController.swift
//  lesson26UITableViewController
//
//  Created by Karen Vardanian on 07.01.2023.
//

import UIKit

class ViewController: UIViewController {

    let tableViewController = UITableViewController(style: .plain)
    var allItem = ["Robbin", "Jobs", "Gilbert"]
    var cellIdentifier = "Cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTableView()
        view.addSubview(tableViewController.tableView)
    }


    func createTableView () {
        tableViewController.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        tableViewController.tableView.delegate = self
        tableViewController.tableView.dataSource = self
    }
    
    
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let item = allItem[indexPath.row]
//        var config = UIListContentConfiguration.cell()
//        config.text = item
        cell.textLabel?.text = item
        
        return cell
    }
    
    
}
