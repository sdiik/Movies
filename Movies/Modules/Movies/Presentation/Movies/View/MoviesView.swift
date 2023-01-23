//
//  MoviesView.swift
//  Movies
//
//  Created by ahmad shiddiq on 19/01/23.
//

import Combine
import SwiftUI

struct MoviesView: View {
    @ObservedObject var moviesModel = MovieListViewModel()
    
    var body: some View {
            LoadingView(isShowing: .constant(self.moviesModel.isLoading)) {
                GeometryReader { reader in
                    ScrollView {
                        VStack(spacing: 4) {
                            Banners(moviesModel: moviesModel)
                                .frame(width: UIScreen.main.bounds.width,
                                       height: moviesModel.popularMovies.count == 0 ? 0 : 110,
                                       alignment: .leading)
                            setSection(with: "Genre")
                            GenreView(genreModel: moviesModel)
                                .frame(width: UIScreen.main.bounds.width,
                                       height: moviesModel.genres.count == 0 ? 0 : 40,
                                       alignment: .leading)
                            setSection(with: "Action Movies")
                            Movies(moviesModel: moviesModel, movieType: .action)
                                .frame(width: UIScreen.main.bounds.width,
                                       height: moviesModel.actionMovies.count == 0 ? 0 : 150,
                                       alignment: .leading)
                            setSection(with: "Last Movies")
                            Movies(moviesModel: moviesModel, movieType: .last)
                                .frame(width: UIScreen.main.bounds.width,
                                       height: moviesModel.lastMovies.count == 0 ? 0 : 150,
                                       alignment: .leading)
                        }
                    }
                }
            }
        .background(Color(UIColor(named: "background_color")!))
    }
}
