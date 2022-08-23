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
}

