//
//  PostStraucture.swift
//  H4XOR News
//
//  Created by Alireza Soltani Neshan on 1/9/1400 AP.
//

import Foundation

struct PostData: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let created_at: String
    let url: String?
    let author: String
    let points: Int
    let title: String
}
