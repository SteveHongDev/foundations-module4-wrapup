//
//  DataService.swift
//  my-library-app
//
//  Created by 홍성범 on 2022/02/11.
//

import Foundation

class DataService {
    
    static func getData() -> [Book] {
        
        let path = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard let path = path else {
            return [Book]()
        }
        
        let url = URL(fileURLWithPath: path)
        
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                let books = try decoder.decode([Book].self, from: data)
                
                for i in books {
                    i.uid = UUID()
                }
                
                return books
                
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        
        return [Book]()
    }
}
