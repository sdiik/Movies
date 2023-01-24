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
typealias FetchReviewsMovieResult = Observable<ReviewMovieResponse>

protocol DetailMovieRepository {
    func fetchDetailMovie(with id: Int) -> FetchDetailMovieResult
    func fetchVideosMovie(with id: Int) -> FetchVideosMovieResult
    func fetchReviewsMovie(with id: Int, pageNumber: Int) -> FetchReviewsMovieResult
}
