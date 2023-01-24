//
//  FavoriteView.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import SwiftUI

struct FavoriteView: View {
    @ObservedObject var favoriteModel = FavoriteViewModel()
    
    var body: some View {
        if !favoriteModel.isAlreadyFavorite() {
            EmptyView(title: $favoriteModel.isEmptyMessage).onAppear(perform: favoriteModel.fetchDetailMovie)
        } else {
            ScrollView(.vertical) {
                ScrollViewReader { reader in
                    LazyVStack {
                        ForEach(self.favoriteModel.favoriteMovies) { favoriteModel in
                            NavigationLink(destination: DetailView(movieId: favoriteModel.id)) {
                                Banner(movie: favoriteModel)
                            }
                        }
                        if self.favoriteModel.isLoading {
                            ProgressView()
                        }
                    }
                }
            }
            .navigationTitle("Favorite Movie")
            .navigationBarTitleDisplayMode(.automatic)
            .onAppear(perform:  favoriteModel.fetchDetailMovie)
        }
           
    }
}
