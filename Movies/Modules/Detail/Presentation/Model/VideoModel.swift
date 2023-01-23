//
//  VideoModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation

struct VideoMovieResponse: Codable {
    let id: Int?
    let results: [VideoMovie]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case results
    }
}

struct VideoMovie: Codable, Identifiable {
    let iso_639_1: String?
    let iso_3166_1: String
    let name: String?
    let key: String?
    let published_at: String?
    let site: String?
    let size: Int?
    let type: String?
    let official: Bool?
    let id: String?
    
    enum CodingKeys: String, CodingKey {
        case iso_639_1
        case iso_3166_1
        case name
        case key
        case published_at
        case site
        case size
        case type
        case official
        case id
    }
}
