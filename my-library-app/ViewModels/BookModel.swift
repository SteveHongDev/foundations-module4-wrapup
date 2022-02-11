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
    
    func changeFavourite(bookId: Int) {
        if let index = books.firstIndex(where: { $0.id == bookId }) {
            books[index].isFavourite.toggle()
        }
    }
    
    func changeRating(bookId: Int, rating: Int) {
        if let index = books.firstIndex(where: { $0.id == bookId }) {
            books[index].rating = rating
        }
    }
}
