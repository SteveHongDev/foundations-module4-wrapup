//
//  BookDetailView.swift
//  my-library-app
//
//  Created by 홍성범 on 2022/02/11.
//

import SwiftUI

struct BookDetailView: View {
    
    @EnvironmentObject var model: BookModel
    @State var ratingScore = 2
    
    var book: Book
    
    
    var body: some View {
        
        
        VStack(alignment: .center) {
            Spacer()
            
            Text("Read Now!")
                .font(.system(.title))
            
            Spacer()
            
            NavigationLink {
                BookContentView(book: book)
            } label: {
                Image("cover\(book.id)")
                    .resizable()
                    .frame(width: 300, height: 450, alignment: .center)
                    .scaledToFill()
            }

            
            
            
            Spacer()
            
            Text("Mark for later!")
                .font(.system(.headline))
            Button {
                model.changeFavourite(bookId: book.id)
            } label: {
                Image(systemName: book.isFavourite ? "star.fill" : "star")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
            }
            .foregroundColor(.yellow)
            .padding(.bottom, 30)
            
            
            
            Text("Rate This Book!")
                .font(.system(.headline))
            
            Picker("Rate", selection: $ratingScore) {
                ForEach (1..<6) { item in
                    Text("\(item)").tag(item)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: ratingScore) { newValue in
                model.changeRating(bookId: book.id, rating: newValue)
            }
            .padding(.horizontal, 30)
            
            Spacer()
            
        }
        .onAppear {
            ratingScore = book.rating
        }
        .navigationTitle(book.title)
    }
        
        
    
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        var model = BookModel()
        BookDetailView(book: model.books[0])
    }
}
