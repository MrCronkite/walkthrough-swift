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
    

struct Photo{
    var id: Int
    var image: String
    var name: String
}

