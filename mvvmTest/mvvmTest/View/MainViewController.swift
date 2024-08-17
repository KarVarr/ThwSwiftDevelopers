//
//  ViewController.swift
//  mvvmTest
//
//  Created by Karen Vardanian on 15.08.2024.
//

import UIKit

class MainViewController: UIViewController {
    let mainViewModel = MainViewModel()
    let activityIndicator = UIActivityIndicatorView()
    var cellDataSource = [Users]()
    
    let tableView: UITableView = {
       let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupTableView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        mainViewModel.getUsers()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setConstraints()
        
        let tableViewWidth = view.bounds.width
        let tableViewHeight = view.bounds.height
        let tableViewX: CGFloat = 0
        let tableViewY: CGFloat = 0
        
        tableView.frame = CGRect(x: tableViewX, y: tableViewY, width: tableViewWidth, height: tableViewHeight)
    }
    
    private func setupViews() {
        view.backgroundColor = .red
        title = "Main View test"
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(tableView)
        view.addSubview(activityIndicator)
    }
    
    private func bindViewModel() {
        mainViewModel.isLoading.bind {[weak self] isLoading in
            guard let self, let isLoading else { return }
            DispatchQueue.main.async {
                isLoading ? self.activityIndicator.startAnimating() : self.activityIndicator.stopAnimating()
            }
        }
        
        mainViewModel.cellDataSource.bind { [weak self] users in
            guard let self, let users else { return }
            cellDataSource = users
            reloadTableView()
        }
    }
}

extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

