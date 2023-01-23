//
//  FetchDetailMovieUseCaseImpl.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation

class FetchDetailMovieUseCaseImpl: FetchDetailMovieUseCase {
    
    let detailMovieRepository: DetailMovieRepository
    
    init(detailMovieRepository: DetailMovieRepository = DetailMovieRepositoryImpl()) {
        self.detailMovieRepository = detailMovieRepository
    }
    
    func detailMovieExecute(with id: Int) -> FetchDetailMovieResult {
        return detailMovieRepository.fetchDetailMovie(with: id)
    }
    
    func videosMovieExecute(with id: Int) -> FetchVideosMovieResult {
        return detailMovieRepository.fetchVideosMovie(with: id)
    }
}
