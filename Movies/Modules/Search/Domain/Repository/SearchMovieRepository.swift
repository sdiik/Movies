//
//  SearchMovieRepository.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import Foundation
import RxSwift

typealias FetchSearchMovieResult = Observable<MovieEntity>

protocol SearchMovieRepository {
    func fetchSearchMovie(pageNumber: Int, keyword: String) -> FetchSearchMovieResult
}

