//
//  ViewController.swift
//  tableViewTest
//
//  Created by admin1 on 4.02.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    enum Compas: String {
        case north = "north"
        case south = "south"
        case east = "east"
        case west = "west"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

