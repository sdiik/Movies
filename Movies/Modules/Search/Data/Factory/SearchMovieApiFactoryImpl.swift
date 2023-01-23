//
//  SearchMovieApiFactoryImpl.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import Foundation

class SearchMovieApiFactoryImpl: SearchMovieApiFactory {
    func createSearchMovieUrl() -> String {
        return "search/movie"
    }
    
    func createSearchMovieParams(pageNumber: Int, keyword: String) -> [String : Any] {
        var request = [String: Any]()
        request["query"] = keyword
        request["page"] = pageNumber
        request["api_key"] = API_KEY
        return request
    }
}
