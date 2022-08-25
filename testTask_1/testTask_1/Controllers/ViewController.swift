//
//  ViewController.swift
//  testTask_1
//
//  Created by admin1 on 23.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    var pageItem: Int = 2
    var idCell: Int = 0
    
    private var course_: [Content] = []
    
    let tableView: UITableView = .init()
    var dataFromCamera: [Photo] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        dataFetch()
        setupTableView()
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    //GET запрос
    func dataFetch() {
        guard let url = URL(string: "https://junior.balinasoft.com/api/v2/photo/type?page=1"
        ) else {return}
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in

            guard let data = data else { return }
            
            do {
                let dataf = try JSONDecoder().decode(ContentParc.self, from: data)
                self.course_ =  dataf.content!
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print(error)
            }
            
        }.resume()}
    
    //POST запрос
    func postData(id: Int, image: UIImage) {
        guard let url = URL(string: "https://junior.balinasoft.com/api/v2/photo") else { return }
       // let image = UIImage(named: "image")
        let imageData = image.jpegData(compressionQuality: 0.7)
        let base64Img = imageData?.base64EncodedString()
        let parametrs = ["name": "vlad","photo": "\(base64Img ?? "")", "typeId": "\(id)"]
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("multipart/form-data", forHTTPHeaderField: "Content-Type")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parametrs, options: []) else { return }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { data, response, error in
            if let response = response {
                print(response)
            }
            
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print("json \(json)")
            } catch {
                print("errorrrr \(error)")
            }
        }.resume()
        
    }
    
}


//datasource таблицы
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


//delegat таблицы
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                    
        idCell = course_[indexPath.row].id ?? 0
        
        /*
        создаем алерт, для выбора фото из камеры и галерии,
        так как нет возможности использовать камеру.
         */
        let actionSheet = UIAlertController(title: nil,
                                            message: nil,
                                            preferredStyle: .actionSheet)
        let camera = UIAlertAction(title: "Camera", style: .default) { _ in
            self.chooseImagePicker(source: .camera)
        }
        let photo = UIAlertAction(title: "Photo", style: .default) { _ in
            self.chooseImagePicker(source: .photoLibrary)
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
                    
        actionSheet.addAction(camera)
        actionSheet.addAction(photo)
        actionSheet.addAction(cancel)
        present(actionSheet, animated: true)
        }
    
    //подгрузка данных при скролинге списка
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let position = scrollView.contentOffset.y
        if position > (tableView.contentSize.height - scrollView.frame.size.height + 20){
        
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
                    print(error)
                }
                
            }.resume()}
          }
}


extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func chooseImagePicker(source: UIImagePickerController.SourceType) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing  = true
        imagePicker.sourceType = source
        present(imagePicker, animated:  true)
        }
    
    //получаем фото из камеры/галереи
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let photo = info[.editedImage] as? UIImage else { return }
        dismiss(animated: true, completion: nil)
        
        postData(id: self.idCell, image: photo)
        
       }
}


//спинер для подрузки данных
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

//отображение таблицы
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



