//
//  Movies.swift
//  Movies
//
//  Created by ahmad shiddiq on 19/01/23.
//

import SwiftUI

struct Movies: View {
    @ObservedObject var moviesModel: MovieListViewModel
    @State var movieType: MovieType
    
    var body: some View {
        GeometryReader { reader in
            switch movieType {
            case .last:
                if !self.moviesModel.lastMovies.isEmpty {
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(self.moviesModel.lastMovies) { last in
                                NavigationLink(destination: DetailView(movieId: last.id)) {
                                    Movie(movie: last)
                                }
                            }
                        }.padding()
                    }
                }
            default:
                if !self.moviesModel.actionMovies.isEmpty {
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(self.moviesModel.actionMovies) { action in
                                NavigationLink(destination: DetailView(movieId: action.id)) {
                                    Movie(movie: action)
                                }
                            }
                        }.padding()
                    }
                }
            }
        }
    }
}
