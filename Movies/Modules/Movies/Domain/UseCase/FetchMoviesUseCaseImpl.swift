//
//  FetchMoviesUseCaseImpl.swift
//  Movies
//
//  Created by ahmad shiddiq on 13/01/23.
//

import Foundation
import RxSwift
import RxCocoa

class FetchMoviesUseCaseImpl: FetchMoviesUseCase {
    
    let movieRepository: MovieRepository
    
    init(movieRepository: MovieRepository = MovieRepositoryImpl()) {
        self.movieRepository = movieRepository
    }

    func execute(pageNumber: Int, movieType: MovieType) -> FetchMoviesResult {
        return movieRepository.fetchMovies(pageNumber: pageNumber, movieType: movieType)
    }
    
    func genreExecute(pageNumber: Int, movieType: MovieType) -> FetchGenresResult {
        return movieRepository.fetchGenresMovie(pageNumber: pageNumber, movieType: movieType)
    }
}
