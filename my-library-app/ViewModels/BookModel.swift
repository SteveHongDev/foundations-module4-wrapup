//
//  BookModel.swift
//  my-library-app
//
//  Created by 홍성범 on 2022/02/10.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books: [Book]
    
    init() {
        books = DataService.getData()
    }
}
