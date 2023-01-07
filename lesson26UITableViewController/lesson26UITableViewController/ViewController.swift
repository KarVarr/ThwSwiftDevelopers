//
//  ViewController.swift
//  lesson26UITableViewController
//
//  Created by Karen Vardanian on 07.01.2023.
//

import UIKit

class ViewController: UIViewController {

//    let tableViewController = UITableViewController(style: .plain)
//    //var allItem = ["Robbin", "Jobs", "Gilbert"]
//    var cellIdentifier = "Cell"
//    //MARK: - refresher
//    var refresh = UIRefreshControl()
//    var allItem = [Date]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // view.backgroundColor = .magenta
//        self.refresh.addTarget(self, action: #selector(handlerRefresh), for: .valueChanged)
//        self.refresh.tintColor = .magenta
//        createTableView()
        
    }
//    //MARK: - refresher Selector
//    @objc func handlerRefresh() {
//        allItem.append(Date())
//        refresh.endRefreshing()
//        let indexPathNewRow = IndexPath(row: allItem.count - 1, section: 0)
//        tableViewController.tableView.insertRows(at: [indexPathNewRow], with: .automatic)
//    }
//
//
//    func createTableView () {
//        tableViewController.tableView = UITableView(frame: view.bounds, style: .plain)
//        tableViewController.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
//        tableViewController.tableView.delegate = self
//        tableViewController.tableView.dataSource = self
//        view.addSubview(tableViewController.tableView)
//        tableViewController.tableView.addSubview(refresh)
//    }
    
}
//MARK: - Extension
//extension ViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return allItem.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
//        //let item = allItem[indexPath.row]
//        let date = allItem[indexPath.row]
//        //var config = UIListContentConfiguration.cell()
//        //config.secondaryText = "hey"
//        cell.textLabel!.text = "\(date)"
//        //cell.textLabel!.text = allItem[indexPath.row]
//        return cell
//    }
//
//
//}
