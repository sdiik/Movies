//
//  SearchViewModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import Foundation
import Combine
import RxSwift

class SearchViewModel: ObservableObject {
    
    private let fetchSearchMovieUseCase: FetchSearchMovieUseCase
    let disposeBag = DisposeBag()
    
    @Published var searchMovies: [DiscoverMovie] = []
    @Published var isLoading: Bool = false
    @Published var keyword: String = "" {
        didSet {
            pageNumber = 1
            canLoadMorePages = true
        }
    }
    @Published var errorMessage: String = "Please find a movie that you like"
    @Published var pageNumber: Int = 1
    private var canLoadMorePages = true
    
    init(fetchSearchMovieUseCase: FetchSearchMovieUseCase = FetchSearchMovieUseCaseImpl()) {
        self.fetchSearchMovieUseCase = fetchSearchMovieUseCase
    }
    
    func fetchSearchMovie() {
        guard !isLoading && canLoadMorePages else {
            return
        }
        self.isLoading = true
        fetchSearchMovieUseCase.execute(pageNumber: self.pageNumber, keyword: self.keyword)
            .observeOn(MainScheduler.instance)
            .subscribe({ [weak self] response in
                switch response {
                case .next(let movies):
                    if let alreadyMovie = movies.results, !alreadyMovie.isEmpty {
                        if self?.pageNumber == 1 {
                            self?.searchMovies = alreadyMovie
                        } else {
                            self?.searchMovies.append(contentsOf: alreadyMovie)
                        }
                        self?.pageNumber += 1
                    } else  {
                        self?.canLoadMorePages = false
                    }
                case .error(let error):
                    self?.errorMessage = error.localizedDescription
                case .completed:
                    self?.isLoading = false
                }
            })
    }
    
}
