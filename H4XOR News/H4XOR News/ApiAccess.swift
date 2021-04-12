//
//  ApiAccess.swift
//  H4XOR News
//
//  Created by Alireza Soltani Neshan on 1/9/1400 AP.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func gettingNewsData () {
        let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page")
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url!) { (data, response, error) in
            if (error == nil){
                do {
                    let decoder = JSONDecoder()
                    let result = try decoder.decode(PostData.self, from: data!)
                    DispatchQueue.main.async {
                        self.posts = result.hits
                    }
                } catch{
                    print(error)
                }
            } else{
                print(error)
            }
        }
        task.resume()
    }
}
