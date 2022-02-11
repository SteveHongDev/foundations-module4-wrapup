//
//  ContentView.swift
//  my-library-app
//
//  Created by 홍성범 on 2022/02/10.
//

import SwiftUI

struct LibraryMainView: View {
    
    @EnvironmentObject var model: BookModel
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                
                GeometryReader { geo in
                    ScrollView {
                        LazyVStack {
                            ForEach (model.books) { item in
                                
                                
                                NavigationLink {
                                    BookDetailView(book: item)
                                } label: {
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.white)
                                        VStack(alignment: .leading) {
                                            HStack(alignment: .top) {
                                                Text(item.title)
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                .padding(.bottom, 5)
                                                
                                                if item.isFavourite {
                                                    Image(systemName: "star.fill")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 24, height: 24, alignment: .center)
                                                        
                                                } else {
                                                    Image(systemName: "star")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 24, height: 24, alignment: .center)
                                                        
                                                }
                                            }
                                            Text(item.author)
                                            Image("cover\(item.id)")
                                                .resizable()
                                                .frame(width: geo.size.width - 80, height: geo.size.height - 150, alignment: .center)
                                                .scaledToFill()
                                        }
                                        .padding()
                                    }
                                    .frame(width: geo.size.width - 45, height: geo.size.height - 50, alignment: .center)
                                    .cornerRadius(15)
                                    .shadow(color: .black, radius: 10, x: -10, y: 10)
                                    .padding()
                                }
                                .foregroundColor(.black)

                                
                                
                            }
                        }
                    }
                }
            }
            .navigationTitle("My Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryMainView()
    }
}
