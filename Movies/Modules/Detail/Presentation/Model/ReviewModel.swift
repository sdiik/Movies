//
//  ReviewModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 24/01/23.
//

import Foundation

struct ReviewMovieResponse: Codable {
    let total_pages: Int?
    let total_results: Int?
    let id: Int?
    let page: Int?
    var results: [ReviewMovieResult]?
    
    enum CodingKeys: String, CodingKey {
        case total_pages
        case total_results
        case id
        case page
        case results
    }
}

struct ReviewMovieResult: Codable, Identifiable {
    let author: String?
    let content: String?
    let created_at: String?
    let id: String?
    let updated_at: String?
    let url: String?
    let author_details: AuthorDetails?
    
    enum CodingKeys: String, CodingKey {
        case author
        case content
        case created_at
        case id
        case updated_at
        case url
        case author_details
    }
}

struct AuthorDetails: Codable {
    let name: String?
    let username: String?
    let avatar_path: String?
    let rating: Int?
    
    enum CodingKeys: String, CodingKey {
        case name
        case username
        case avatar_path
        case rating
    }
}
