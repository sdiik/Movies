//
//  MovieRepository.swift
//  MovieList
//
//  Created by ahmad shiddiq on 13/01/23.
//

import Foundation

typealias FetchMovieResult = (_ result: Result<[MovieEntity], FetchMovieError>) -> Void

protocol MovieRepository {
    func fetchMovies(result: @escaping FetchMovieResult)
}
