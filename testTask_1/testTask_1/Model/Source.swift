//
//  Source.swift
//  testTask_1
//
//  Created by admin1 on 23.08.22.
//

import Foundation

struct Content: Decodable {
    let id: Int?
    let image: String?
    let name: String?
}

struct ContentParc: Decodable {
    let content: [Content]?
    let page: Int?
    let pageSize: Int?
    let totalElements: Int?
    let totalPages: Int?
}
    
