//
//  Genres.swift
//  Movies
//
//  Created by ahmad shiddiq on 19/01/23.
//

import SwiftUI

struct GenreView: View {
    @ObservedObject var genreModel: MovieListViewModel
    
    var body: some View {
        GeometryReader { reader in
            VStack(alignment: .leading, spacing: 0) {
                if  !self.genreModel.genres.isEmpty {
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(self.genreModel.genres) { data in
                                genre(for: data.name ?? "")
                            }
                        }.padding()
                    }
                }
            }
        }
    }
}
