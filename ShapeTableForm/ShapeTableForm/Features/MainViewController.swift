//
//  ViewController.swift
//  ShapeTableForm
//
//  Created by Joao Paulo Pereira dos Santos on 03/10/20.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero)
        //TODO: Set delegate and dataSource
        
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

extension MainViewController: ViewCodable {
    func setupViewHierarchy() {
        view.addSubview(tableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func setupAditionalConfiguration() {
        title = "Food Detail"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}





