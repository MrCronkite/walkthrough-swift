//
//  Source.swift
//  testTask_1
//
//  Created by admin1 on 23.08.22.
//

import Foundation
import UIKit

struct Content: Decodable {
    let image: String?
    let id: Int?
    let name: String?
}

struct ContentParc: Decodable {
    let content: String?
    let page: Int?
    let pageSize: Int?
    
    
}


struct Source {
    static func makeContacts() -> [Content] {
        [
                .init(image: "123", id: 23, name: "2342"),
                .init(image: "123", id: 25, name: "2342"),
                .init(image: "123", id: 26, name: "2342"),
                .init(image: "123", id: 27, name: "2342"),
                .init(image: "123", id: 28, name: "2342"),
                .init(image: "123", id: 29, name: "2342"),
                .init(image: "123", id: 30, name: "2342")
        ]
    }
    
    static func dataFetch() {
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
                let courses = try JSONDecoder().decode(Content.self, from: data)
                print(courses)
            } catch {
                print("тут ошибка \(error)")
            }
            

        }.resume()
    }
    
}

