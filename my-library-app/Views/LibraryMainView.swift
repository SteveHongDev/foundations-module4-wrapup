//
//  ContentView.swift
//  my-library-app
//
//  Created by 홍성범 on 2022/02/10.
//

import SwiftUI

struct LibraryMainView: View {
    
    var body: some View {
        ScrollView {
            Text("My Library")
                .font(.title)
                .fontWeight(.bold)
            
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryMainView()
    }
}
