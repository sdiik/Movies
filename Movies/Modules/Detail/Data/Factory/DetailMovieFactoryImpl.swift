//
//  DetailMovieFactoryImpl.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation

class DetailMovieFactoryImpl: DetailMovieFactory {
    
    func createDetailMovieURL(with id: Int) -> String {
        return "movie/\(id)"
    }
    
    func createDetailMovieRequestParams() -> [String : Any] {
        var request = [String: Any]()
        request["api_key"] = API_KEY
        return request
    }
    
    func createVideosMovieURL(with id: Int) -> String {
        return "movie/\(id)/videos"
    }
    
    func createVideosMovieRequestParams() -> [String : Any] {
        var request = [String: Any]()
        request["api_key"] = API_KEY
        return request
    }
}
