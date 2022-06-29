//
//  Bus.swift
//  Bus
//
//  Created by Arie on 2022/06/29.
//

import Foundation

struct BookList: Codable {
    let items: [Bus]
}

struct Bus: Codable {
    let id: String
    let name: String
    let isBookmarked: Bool
}
