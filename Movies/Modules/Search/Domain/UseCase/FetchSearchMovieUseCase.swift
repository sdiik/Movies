//
//  FetchSearchMovieUseCase.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import Foundation

protocol FetchSearchMovieUseCase {
    func execute(pageNumber: Int, keyword: String) -> FetchSearchMovieResult
}
