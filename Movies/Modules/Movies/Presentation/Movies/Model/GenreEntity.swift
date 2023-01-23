//
//  GenreEntity.swift
//  Movies
//
//  Created by ahmad shiddiq on 20/01/23.
//

import Foundation

struct GenreEntity: Codable {
    let genres: [Genre]?
    
    enum CodingKeys: String, CodingKey {
        case genres
    }
}

struct Genre: Codable, Identifiable {
    let id: Int?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
}
