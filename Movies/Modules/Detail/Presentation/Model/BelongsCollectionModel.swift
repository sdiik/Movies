//
//  BelongsCollectionModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation

struct BelongsToCollection: Codable {
    let id: Int?
    let name: String?
    let poster_path: String?
    let backdrop_path: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case poster_path
        case backdrop_path
    }
}

