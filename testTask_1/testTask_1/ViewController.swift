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
        setupTableView()
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        content.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "TableViewCell",
            for: indexPath) as? TableViewCell
        else { fatalError() }
        
        cell.config(content: content[indexPath.row])
        
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
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



