//
//  DetailMovieRepositoryImpl.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation

struct DetailMovieRepositoryImpl: DetailMovieRepository {
    
    let networkRepository: NetworkRepository
    let detailMovieFactory: DetailMovieFactory
    
    init(networkRepository: NetworkRepository = NetworkRepositoryImpl(),
         detailMovieFactory: DetailMovieFactory = DetailMovieFactoryImpl()) {
        self.networkRepository = networkRepository
        self.detailMovieFactory = detailMovieFactory
    }
    
    func fetchDetailMovie(with id: Int) -> FetchDetailMovieResult {
        let api = API.moviesApi(url: detailMovieFactory.createDetailMovieURL(with: id), request: detailMovieFactory.createDetailMovieRequestParams())
        return networkRepository.request(target: api)
    }
    
    func fetchVideosMovie(with id: Int) -> FetchVideosMovieResult {
        let api = API.moviesApi(url: detailMovieFactory.createVideosMovieURL(with: id), request: detailMovieFactory.createVideosMovieRequestParams())
        return networkRepository.request(target: api)
    }
    
}
