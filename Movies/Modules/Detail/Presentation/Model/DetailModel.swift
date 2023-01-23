//
//  DetailModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation

// MARK: -- Detail Movies
struct DetailMovieResponse: Codable {
    let adult: Bool?
    let backdrop_path: String?
    let belongs_to_collection: BelongsToCollection?
    let budget: Int?
    let genres: [Genres]?
    let homepage: String?
    let id: Int?
    let imdb_id: String?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let popularity: Double?
    let poster_path: String?
    let production_companies: [ProductionCompanies]?
    let production_countries: [ProductionCountries]?
    let release_date: String?
    let revenue: Int?
    let runtime: Int?
    let status: String?
    let tagline: String?
    let title: String?
    let video: Bool?
    let vote_average: Double?
    let vote_count: Double?
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdrop_path
        case belongs_to_collection
        case budget
        case genres
        case homepage
        case id
        case imdb_id
        case original_language
        case original_title
        case overview
        case popularity
        case poster_path
        case production_companies
        case production_countries
        case release_date
        case revenue
        case runtime
        case status
        case tagline
        case title
        case video
        case vote_average
        case vote_count
    }
}
