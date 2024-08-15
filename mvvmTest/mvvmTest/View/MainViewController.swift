//
//  ViewController.swift
//  mvvmTest
//
//  Created by Karen Vardanian on 15.08.2024.
//

import UIKit

class MainViewController: UIViewController {
    let mainViewModel = MainViewModel()
    
    let tableView: UITableView = {
       let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupTableView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let tableViewWidth = view.bounds.width
        let tableViewHeight = view.bounds.height
        let tableViewX: CGFloat = 0
        let tableViewY: CGFloat = 0
        
        tableView.frame = CGRect(x: tableViewX, y: tableViewY, width: tableViewWidth, height: tableViewHeight)
    }
    
    private func setupViews() {
        view.backgroundColor = .red
        title = "Main View test"
        
        view.addSubview(tableView)
    }
}

