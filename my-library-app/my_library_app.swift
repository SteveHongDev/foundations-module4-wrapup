//
//  my_library_appApp.swift
//  my-library-app
//
//  Created by 홍성범 on 2022/02/10.
//

import SwiftUI

@main
struct my_library_app: App {
    var body: some Scene {
        WindowGroup {
            LibraryMainView()
                .environmentObject(BookModel())
        }

    }
}
