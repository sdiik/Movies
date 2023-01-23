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
    @Published var idMovie: Int = 0 {
        didSet {
            fetchDetailMovie()
            fetchVideosMovie()
        }
    }
    @Published var isLoading = false
    @Published var errorMessage = ""
    
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
                    print("---- videoResult -----\(videosResult)")
                    self?.videosMovie = videosResult
                case .error(let error):
                    self?.errorMessage = error.localizedDescription
                case .completed:
                    self?.isLoading = false
                }
            })
    }
}
