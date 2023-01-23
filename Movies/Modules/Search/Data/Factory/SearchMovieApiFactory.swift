//
//  SearchMovieApiFactory.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import Foundation

protocol SearchMovieApiFactory {
    func createSearchMovieUrl() -> String
    func createSearchMovieParams(pageNumber: Int, keyword: String) -> [String: Any]
}
