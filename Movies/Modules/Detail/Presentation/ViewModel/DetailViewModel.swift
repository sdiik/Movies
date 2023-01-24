//
//  DetailViewModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 22/01/23.
//

import Combine
import Foundation
import RxSwift

class DetailViewModel: ObservableObject {

    private let fetchDetailMovieUseCase: FetchDetailMovieUseCase
    
    @Published var detailMovie: DetailMovieResponse?
    @Published var videosMovie: VideoMovieResponse?
    @Published var reviewsMovie: ReviewMovieResponse?
    @Published var idMovie: Int = 0 {
        didSet {
            pageNumber = 1
            fetchDetailMovie()
            fetchVideosMovie()
            fetchReviewsMovie()
        }
    }
    @Published var isLoading = false
    @Published var errorMessage = ""
    var pageNumber: Int = 1
    
    init(fetchDetailMovieUseCase: FetchDetailMovieUseCase = FetchDetailMovieUseCaseImpl()) {
        self.fetchDetailMovieUseCase = fetchDetailMovieUseCase
    }
    
    func fetchDetailMovie() {
        guard idMovie != 0 else { return }
        self.isLoading = true
        fetchDetailMovieUseCase.detailMovieExecute(with: idMovie)
            .observeOn(MainScheduler.instance)
            .subscribe({ [weak self] response in
                switch response {
                case .next(let detailResult):
                    self?.detailMovie = detailResult
                case .error(let error):
                    self?.errorMessage = error.localizedDescription
                case .completed:
                    self?.isLoading = false
                }
            })
    }
    
    func fetchVideosMovie() {
        guard idMovie != 0 else { return }
        self.isLoading = true
        fetchDetailMovieUseCase.videosMovieExecute(with: idMovie)
            .observeOn(MainScheduler.instance)
            .subscribe({ [weak self] response in
                switch response {
                case .next(let videosResult):
                    self?.videosMovie = videosResult
                case .error(let error):
                    self?.errorMessage = error.localizedDescription
                case .completed:
                    self?.isLoading = false
                }
            })
    }
    
    func fetchReviewsMovie() {
        guard idMovie != 0 else { return }
        self.isLoading = true
        fetchDetailMovieUseCase.reviewsMovieExecute(with: idMovie, pageNumber: pageNumber)
            .observeOn(MainScheduler.instance)
            .subscribe({ [weak self] response in
                switch response {
                case .next(let reviewsResult):
                    if let alreadyReview = reviewsResult.results, !alreadyReview.isEmpty {
                        if self?.pageNumber ==  1 {
                            self?.reviewsMovie = reviewsResult
                        } else {
                            self?.reviewsMovie?.results?.append(contentsOf: alreadyReview)
                        }
                        self?.pageNumber += 1
                        self?.fetchReviewsMovie()
                    }
                case .error(let error):
                    self?.errorMessage = error.localizedDescription
                case .completed:
                    self?.isLoading = false
                }
            })
    }
    
}
