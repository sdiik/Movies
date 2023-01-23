//
//  FetchSearchMovieUseCaseImpl.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import Foundation

class FetchSearchMovieUseCaseImpl: FetchSearchMovieUseCase {
    
    let searchMovieRepository: SearchMovieRepository
    
    init(searchMovieRepository: SearchMovieRepository = SearchMovieRepositoryImpl()) {
        self.searchMovieRepository = searchMovieRepository
    }
    
    func execute(pageNumber: Int, keyword: String) -> FetchSearchMovieResult {
        return searchMovieRepository.fetchSearchMovie(pageNumber: pageNumber, keyword: keyword)
    }
}
