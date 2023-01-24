//
//  FavoriteViewModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 22/01/23.
//


import Foundation
import Combine
import RxSwift

class FavoriteViewModel: ObservableObject {

    private let fetchDetailMovieUseCase: FetchDetailMovieUseCase
    
    @Published var favoriteMovies: [DiscoverMovie] = []
    @Published var isEmptyMessage = "You don't have a favorite movie yet"
    @Published var isLoading: Bool = false
    
    init(fetchDetailMovieUseCase: FetchDetailMovieUseCase = FetchDetailMovieUseCaseImpl()) {
        self.fetchDetailMovieUseCase = fetchDetailMovieUseCase
    }
    
    func isAlreadyFavorite() -> Bool {
        if FavoritesSaved.getFavoriteIds().isEmpty {
            return false
        } else {
            return true
        }
    }
    
    func fetchDetailMovie() {
        favoriteMovies.removeAll()
        guard isAlreadyFavorite() else {
            return
        }
        for id in FavoritesSaved.getFavoriteIds() {
            isLoading = true
            fetchDetailMovieUseCase.detailMovieExecute(with: id)
                .observeOn(MainScheduler.instance)
                .subscribe({ [weak self] response in
                    switch response {
                    case .next(let detailResult):
                        let discoveryMovie = DiscoverMovie(adult: false,
                                                           id: detailResult.id, original_language: nil,
                                                           original_title: detailResult.original_title,
                                                           overview: detailResult.overview,
                                                           popularity: nil,
                                                           poster_path: detailResult.poster_path,
                                                           release_date: nil,
                                                           title: detailResult.title,
                                                           video: nil,
                                                           vote_average: nil,
                                                           vote_count: nil)
                        self?.favoriteMovies.append(discoveryMovie)
                    case .error(let error):
                        self?.isEmptyMessage = error.localizedDescription
                    case .completed:
                        self?.isLoading = false
                    }
                })
        }
    }
}
