//
//  Book.swift
//  my-library-app
//
//  Created by 홍성범 on 2022/02/10.
//

import Foundation

struct Book: Identifiable, Decodable {
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var id: Int
    var content: [String]
}
