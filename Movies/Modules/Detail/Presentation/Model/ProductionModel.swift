//
//  ProductionModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation

struct ProductionCompanies: Codable {
    let id: Int?
    let logo_path: String?
    let name: String?
    let origin_country: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case logo_path
        case name
        case origin_country
    }
}

struct ProductionCountries: Codable {
    let iso_3166_1: String?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case iso_3166_1
        case name
    }
}
