//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by Alireza Soltani Neshan on 1/9/1400 AP.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func gettingData () {
        let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page")
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url!) { (data, res, err) in
            let decoder = JSONDecoder()
            do {
                let results = try decoder.decode(DataPost.self, from: data!)
                DispatchQueue.main.async {
                    self.posts = results.hits
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
