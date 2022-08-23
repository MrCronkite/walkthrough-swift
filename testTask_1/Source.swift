//
//  Source.swift
//  testTask_1
//
//  Created by admin1 on 23.08.22.
//

import Foundation
import UIKit

struct Content: Decodable {
    let id: Int?
    let image: String?
    let name: String?
}

struct ContentParc: Decodable {
    let content: [Content]?
    let page: Int?
    let pagesz: Int?
    let nft: Int?
    let total: Int?
}


struct Source {
    static func makeContacts() -> [Content] {
        [
            .init(id: 23, image: "ghbce", name: "sdcdcsd"),
            .init(id: 23, image: "ghbce", name: "sdcdcsd"),
            .init(id: 23, image: "ghbce", name: "sdcdcsd"),
            .init(id: 23, image: "ghbce", name: "sdcdcsd"),
            .init(id: 23, image: "ghbce", name: "sdcdcsd"),
            .init(id: 23, image: "ghbce", name: "sdcdcsd"),
            .init(id: 23, image: "ghbce", name: "sdcdcsd"),
            .init(id: 23, image: "ghbce", name: "sdcdcsd"),
            .init(id: 23, image: "ghbce", name: "sdcdcsd")
        ]
    }
    
    static func dataFetch() {
        guard let url = URL(string: "https://junior.balinasoft.com/api/v2/photo/type?page=2"
        ) else {return}
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            
            do {
            let coursesPage = try JSONDecoder().decode(ContentParc.self, from: data)
                print(coursesPage.content ?? "")
            } catch {
                print("тут ошибка \(error)")
            }
            

        }.resume()
    }
    
}

