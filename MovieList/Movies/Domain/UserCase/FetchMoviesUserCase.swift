//
//  FetchMoviesUserCase.swift
//  MovieList
//
//  Created by ahmad shiddiq on 13/01/23.
//

typealias FetchMovieUseCaseCompletionHandler = (_ movies: [MovieEntity]) -> Void

protocol FetchMoviesUserCase {
    func execute(_ completionHandler: @escaping FetchMovieUseCaseCompletionHandler)
}
