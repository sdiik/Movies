//
//  MovieType.swift
//  Movies
//
//  Created by ahmad shiddiq on 20/01/23.
//

enum MovieType {
    case genre
    case last
    case popular
    case action
    
    var title: String {
        switch self {
        case .genre:
            return "genre"
        case .last:
            return "Lasted"
        case .popular:
            return "popular"
        case .action:
            return "action"
        }
    }
}
