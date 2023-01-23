//
//  MovieRepositoryImpl.swift
//  Movies
//
//  Created by ahmad shiddiq on 13/01/23.
//

import Foundation

struct MovieRepositoryImpl: MovieRepository {

    let networkRepository: NetworkRepository
    let movieApiActionFactory: MovieApiActionFactory
    
    init(networkRepository: NetworkRepository = NetworkRepositoryImpl(),
         movieApiActionFactory: MovieApiActionFactory = MoviesApiActionFactoryImpl()) {
        self.networkRepository = networkRepository
        self.movieApiActionFactory = movieApiActionFactory
    }
    
    func fetchMovies(pageNumber: Int, movieType: MovieType) -> FetchMoviesResult {
        let api = API.moviesApi(url: movieApiActionFactory.createDiscoverMovieURL(movieType: movieType),
                                            request: movieApiActionFactory.createDiscoverMovieRequestParams(pageNumber: pageNumber, movieType: movieType))
        return networkRepository.request(target: api)
    }
    
    func fetchGenresMovie(pageNumber: Int, movieType: MovieType) -> FetchGenresResult {
        let api = API.moviesApi(url: movieApiActionFactory.createDiscoverMovieURL(movieType: movieType),
                                            request: movieApiActionFactory.createDiscoverMovieRequestParams(pageNumber: pageNumber, movieType: movieType))
        return networkRepository.request(target: api)
    }
    
}
