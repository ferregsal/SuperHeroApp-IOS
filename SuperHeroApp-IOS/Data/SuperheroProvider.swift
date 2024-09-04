//
//  SuperheroProvider.swift
//  SuperHeroApp-IOS
//
//  Created by Mañanas on 4/9/24.
//

import Foundation

class SuperheroProvider {
    
    static func findSuperheroesByName(_ name: String, withResult: @escaping ([Superhero]) -> Void) {
        guard let url = URL(string: "\(Constants.BASE_URL)search/\(name)") else {
            print("URL not valid")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                // Handle the error
                print("Error: \(error.localizedDescription)")
                return
            } else if let data = data {
                // Process the data
                let result = try! JSONDecoder().decode(SuperheroResponse.self, from: data)
                withResult(result.results)
            }
        }
        task.resume()
    }
    
}
