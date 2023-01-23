//
//  DetailMovieRepository.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation
import RxSwift

typealias FetchDetailMovieResult = Observable<DetailMovieResponse>
typealias FetchVideosMovieResult = Observable<VideoMovieResponse>

protocol DetailMovieRepository {
    func fetchDetailMovie(with id: Int) -> FetchDetailMovieResult
    func fetchVideosMovie(with id: Int) -> FetchVideosMovieResult
}
