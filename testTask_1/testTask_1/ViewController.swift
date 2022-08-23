//
//  ViewController.swift
//  testTask_1
//
//  Created by admin1 on 23.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    struct Course: Decodable {
        var name: String?
        let link: String?
        let imageUrl: String?
        let number_of_lessons: Int?
        let number_of_tests: Int?
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getData(_ sender: Any) {
        guard let url = URL(string: "https://junior.balinasoft.com/api/v2/photo/type?page=2"
        ) else {return}
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print("тут респонс \(response)")
            }
            
            guard let data = data else { return }
            print("тут дата \(data)")
            print(data)
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print("тут джейсон \(json)")
                //var courses = try JSONDecoder().decode(Course.self, from: data)
               // courses.name = courses.number_of_lessons
               // print(courses)
            } catch {
                print("тут ошибка \(error)")
            }
            

        }.resume()
    }
}

