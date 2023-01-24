//
//  DetailMovieFactory.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation

protocol DetailMovieFactory {
    func createDetailMovieURL(with id: Int) -> String
    func createDetailMovieRequestParams() -> [String: Any]
    func createVideosMovieURL(with id: Int) -> String
    func createVideosMovieRequestParams() -> [String: Any]
    func createReviewMovieURL(with id: Int) -> String
    func createReviewMovieRequestParams(pageNumber: Int) -> [String: Any]
}
