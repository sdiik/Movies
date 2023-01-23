//
//  MovieListViewModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 16/01/23.
//

import Foundation
import Combine
import RxSwift


class MovieListViewModel: ObservableObject {
    
    private let fetchMovieUseCase: FetchMoviesUseCase
    let disposeBag = DisposeBag()
    
    @Published var title: String = "Movies"
    @Published var isLoading: Bool = false
    @Published var pageNumber: Int = 1
    @Published var genres: [Genre] = []
    @Published var popularMovies: [DiscoverMovie] = []
    @Published var actionMovies: [DiscoverMovie] = []
    @Published var lastMovies: [DiscoverMovie] = []
    
    init(fetchMovieUseCase: FetchMoviesUseCase = FetchMoviesUseCaseImpl()) {
        self.fetchMovieUseCase = fetchMovieUseCase
        fetchGenreMovie(with: .genre)
        fetchActionMovie(with: .popular)
        fetchActionMovie(with: .action)
        fetchActionMovie(with: .last)
    }
    
    func fetchActionMovie(with movieType: MovieType) {
        self.isLoading = true
        fetchMovieUseCase.execute(pageNumber: self.pageNumber, movieType: movieType)
            .observeOn(MainScheduler.instance)
            .subscribe({ [weak self] response in
                switch response {
                case .next(let movies):
                    if let alreadyMovies = movies.results, !alreadyMovies.isEmpty {
                        switch movieType {
                        case .popular:
                            self?.popularMovies = alreadyMovies
                        case .last:
                            self?.lastMovies = alreadyMovies
                        case .action:
                            self?.actionMovies = alreadyMovies
                        default:
                            break
                        }
                    }
                case .error(let error):
                    print("error with message: \(error)")
                case .completed:
                    self?.isLoading = false
                }
            }).disposed(by: disposeBag)
    }
    
    func fetchGenreMovie(with movieType: MovieType) {
        self.isLoading = true
        fetchMovieUseCase.genreExecute(pageNumber: pageNumber, movieType: .genre)
            .observeOn(MainScheduler.instance)
            .subscribe({ [weak self] response in
                switch response {
                case .next(let genres):
                    if let alreadyGenres = genres.genres {
                        self?.genres = alreadyGenres
                    }
                case .error(let error):
                    print("error with message: \(error)")
                case .completed:
                    self?.isLoading = false
                }
            }).disposed(by: disposeBag)
    }
}
