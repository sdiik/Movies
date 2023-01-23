//
//  SearchMovieRepositoryImpl.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import Foundation

struct SearchMovieRepositoryImpl: SearchMovieRepository {
    
    let networkRepository: NetworkRepository
    let searchMovieApiFactory: SearchMovieApiFactory
    
    init(networkRepository: NetworkRepository = NetworkRepositoryImpl(),
         searchMovieApiFactory: SearchMovieApiFactory =  SearchMovieApiFactoryImpl()) {
        self.networkRepository = networkRepository
        self.searchMovieApiFactory = searchMovieApiFactory
    }
    
    func fetchSearchMovie(pageNumber: Int, keyword: String) -> FetchSearchMovieResult {
        let api = API.moviesApi(url: searchMovieApiFactory.createSearchMovieUrl(), request: searchMovieApiFactory.createSearchMovieParams(pageNumber: pageNumber, keyword: keyword))
        return networkRepository.request(target: api)
    }
    
    
}
