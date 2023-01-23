//
//  FetchMoviesUseCase.swift
//  Movies
//
//  Created by ahmad shiddiq on 13/01/23.
//
 
protocol FetchMoviesUseCase {
    func execute(pageNumber: Int, movieType: MovieType) -> FetchMoviesResult
    func genreExecute(pageNumber: Int, movieType: MovieType) -> FetchGenresResult
}
