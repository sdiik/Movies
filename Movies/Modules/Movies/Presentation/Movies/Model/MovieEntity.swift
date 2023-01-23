//
//  MovieEntity.swift
//  Movies
//
//  Created by ahmad shiddiq on 13/01/23.
//

import Foundation

struct MovieEntity: Codable {
    let total_pages: Int?
    let total_results: Int?
    let page: Int?
    let results: [DiscoverMovie]?
    
    enum CodingKeys: String, CodingKey {
        case total_pages
        case total_results
        case page
        case results
    }
}

struct DiscoverMovie: Codable, Identifiable {
    let adult: Bool?
    let id: Int?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let popularity: Double?
    let poster_path: String?
    let release_date: String?
    let title: String?
    let video: Bool?
    let vote_average: Double?
    let vote_count: Double?
    
    enum CodingKeys: String, CodingKey {
        case adult
        case id
        case original_language
        case original_title
        case overview
        case popularity
        case poster_path
        case release_date
        case title
        case video
        case vote_average
        case vote_count
    }
}
