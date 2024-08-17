//
//  DetailsViewController.swift
//  mvvmTest
//
//  Created by Karen Vardanian on 17.08.2024.
//

import UIKit

class DetailsViewController: UIViewController {
    private let name = UILabel()
    private let username = UILabel()
    private let email = UILabel()
    private let phone = UILabel()
    private let street = UILabel()
    private let suite = UILabel()
    private let city = UILabel()
    
    private var labelsStackView = UIStackView()
    
    let detailsViewModel: DetailsViewModel
    init(_ detailsViewModel: DetailsViewModel) {
        self.detailsViewModel = detailsViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
        displayUserInfo()
    }
    
    private func setupViews() {
        title = "User Details"
        view.backgroundColor = .white
        
        labelsStackView = UIStackView(arrangedSubviews: [name, username, email, phone, street, suite, city])
        labelsStackView.axis = .vertical
        labelsStackView.spacing = 2
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelsStackView)
    }
    
    private func displayUserInfo() {
        name.text = detailsViewModel.name
        username.text = detailsViewModel.username
        email.text = detailsViewModel.email
        phone.text = detailsViewModel.phone
        street.text = detailsViewModel.street
        suite.text = detailsViewModel.suite
        city.text = detailsViewModel.city
    }
}

extension DetailsViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            labelsStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            labelsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])
    }
}
