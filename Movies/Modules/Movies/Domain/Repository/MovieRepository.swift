//
//  MovieRepository.swift
//  Movies
//
//  Created by ahmad shiddiq on 13/01/23.
//

import Foundation
import RxSwift

typealias FetchMoviesResult = Observable<MovieEntity>
typealias FetchGenresResult = Observable<GenreEntity>

protocol MovieRepository {
    func fetchMovies(pageNumber: Int, movieType: MovieType) -> FetchMoviesResult
    func fetchGenresMovie(pageNumber: Int, movieType: MovieType) -> FetchGenresResult
}
