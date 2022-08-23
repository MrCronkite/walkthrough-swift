//
//  ViewController.swift
//  testTask_1
//
//  Created by admin1 on 23.08.22.
//

import UIKit

class ViewController: UIViewController {
    
   // var content = Source.makeContacts()
    var pageItem: Int = 2
    
    private var course_: [Content] = []
    
    let tableView: UITableView = .init()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        dataFetch()
        //Source.dataFetch()
        setupTableView()
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
       // print("nnnnnnnnnnnnn \(self.course_)")
    }
    
    
    
    func dataFetch() {
        guard let url = URL(string: "https://junior.balinasoft.com/api/v2/photo/type?page=1"
        ) else {return}
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            
            do {
                let dataf = try JSONDecoder().decode(ContentParc.self, from: data)
                self.course_ =  dataf.content!
                print(self.course_.count)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print("тут ошибка \(error)")
            }
            

        }.resume()}
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.course_.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "TableViewCell",
            for: indexPath) as? TableViewCell
        else { fatalError() }
        
        cell.config(content: course_[indexPath.row])
        
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let position = scrollView.contentOffset.y
        if position > (tableView.contentSize.height - scrollView.frame.size.height + 50){
        
        self.tableView.tableFooterView = createSpinerFooter()
            
        guard let url = URL(string: "https://junior.balinasoft.com/api/v2/photo/type?page=\(self.pageItem)")
            else {return}
            
            let session = URLSession.shared
            session.dataTask(with: url) { (data, response, error) in
                
                guard let data = data else { return }
                
                do {
                    let dataf = try JSONDecoder().decode(ContentParc.self, from: data)
                    self.course_.append(contentsOf: dataf.content!)
                    if self.pageItem > 7 {
                        self.pageItem = 1
                    } else {
                        self.pageItem = self.pageItem + 1
                    }
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                } catch {
                    print("тут ошибка \(error)")
                }
                

            }.resume()}
        
          }

}


extension ViewController {
    private func createSpinerFooter() -> UIView {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 100))
        
        let spiner = UIActivityIndicatorView()
        spiner.center = footerView.center
        footerView.addSubview(spiner)
        spiner.startAnimating()
        
        return footerView
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



