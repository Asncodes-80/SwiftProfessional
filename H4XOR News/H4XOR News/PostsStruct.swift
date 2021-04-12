//
//  PostsStruc.swift
//  H4XOR News
//
//  Created by Alireza Soltani Neshan on 1/9/1400 AP.
//

import Foundation


struct DataPost: Codable {
    let hits: [Post]
}


struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let created_at: String
    let author: String
    let url: String?
}
