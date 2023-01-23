//
//  GenreModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation

struct Genres: Codable, Identifiable {
    let id: Int?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
}
