//
//  FetchDetailMovieUseCase.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation

protocol FetchDetailMovieUseCase {
    
    func detailMovieExecute(with id: Int) -> FetchDetailMovieResult
    func videosMovieExecute(with id: Int) -> FetchVideosMovieResult
}
