//
//  BookContentView.swift
//  my-library-app
//
//  Created by 홍성범 on 2022/02/12.
//

import SwiftUI

struct BookContentView: View {
    
    @EnvironmentObject var model: BookModel
    
    var book: Book
    
    var body: some View {
        
        TabView {
            
            ForEach (0..<book.content.count) { index in
                VStack {
                    Text(book.content[index])
                        .padding()
                        
                    Spacer()
                    Text("-\(index + 1)-")
                }
                .tag(index)
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
    }
}

struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        
        BookContentView(book: model.books[0])
    }
}
