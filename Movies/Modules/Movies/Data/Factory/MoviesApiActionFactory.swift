//
//  MoviesApiActionFactory.swift
//  Movies
//
//  Created by ahmad shiddiq on 13/01/23.
//

import Foundation

protocol MovieApiActionFactory {
    func createDiscoverMovieURL(movieType: MovieType) -> String
    func createDiscoverMovieRequestParams(pageNumber: Int, movieType: MovieType) -> [String: Any]
}
