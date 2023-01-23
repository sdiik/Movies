//
//  GenreMovieView.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import SwiftUI

struct GenreMovieView: View {
    
    @ObservedObject var detailMovie: DetailViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
                if let alreadyGenres = self.detailMovie.detailMovie?.genres, !alreadyGenres.isEmpty {
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(alreadyGenres) { data in
                                genre(for: data.name ?? "")
                            }
                        }.padding()
                    }
                }
            }
        
    }
}
