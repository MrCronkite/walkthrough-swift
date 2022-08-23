//
//  ViewController.swift
//  testTask_1
//
//  Created by admin1 on 23.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    var content = Source.makeContacts()
    
    let tableView: UITableView = .init()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Source.dataFetch()
    }
    
}


extension ViewController {
    func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

