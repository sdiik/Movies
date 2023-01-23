//
//  Banners.swift
//  Movies
//
//  Created by ahmad shiddiq on 19/01/23.
//

import Foundation
import SwiftUI

struct Banners: View {
    @ObservedObject var moviesModel: MovieListViewModel
    
    var body: some View {
        GeometryReader { reader in
            if !self.moviesModel.popularMovies.isEmpty {
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(self.moviesModel.popularMovies) { popularMovie in
                            NavigationLink(destination: DetailView(movieId: popularMovie.id)) {
                                Banner(movie: popularMovie)
                            }
                        }
                    }.padding()
                }
            }
        }
    }
}
