//
//  MoviesApiActionFactoryImpl.swift
//  Movies
//
//  Created by ahmad shiddiq on 13/01/23.
//

import Foundation

class MoviesApiActionFactoryImpl: MovieApiActionFactory {
    func createDiscoverMovieURL(movieType: MovieType) -> String {
        switch movieType {
        case .genre:
            return "genre/movie/list"
        case .last, .action:
            return "discover/movie"
        case .popular:
            return "movie/popular"
        }
    }
    
    func createDiscoverMovieRequestParams(pageNumber: Int, movieType: MovieType) -> [String : Any] {
        var request = [String: Any]()
        switch movieType {
        case .action:
            request = addActionMovieParams()
            request["include_adult"] = false
            request["include_video"] = false
            request["page"] = pageNumber
        case .last:
            request["sort_by"] = "release_date.asc"
            request["include_adult"] = false
            request["include_video"] = false
            request["page"] = pageNumber
        default:
            break
        }
        request["api_key"] = API_KEY
        return request
    }
    
    func addActionMovieParams() -> [String: Any] {
        var request = [String: Any]()
        request["with_genres"] = "Action"
        request["with_watch_monetization_types"] = "flatrate"
        return request
    }
}
