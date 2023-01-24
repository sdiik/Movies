//
//  DetailView.swift
//  Movies
//
//  Created by ahmad shiddiq on 22/01/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct DetailView: View {
    
    @ObservedObject var detailModel = DetailViewModel()
    let movieId: Int?
    
    var body: some View {
        GeometryReader { reader in
            ScrollView {
                LazyVStack(alignment: .center) {
                    Videos(detailModel: detailModel)
                    GenreMovieView(detailMovie: detailModel)
                    VStack(alignment: .leading, spacing: 12) {
                        Text(detailModel.detailMovie?.title ?? "").titleStyle
                        Text(detailModel.detailMovie?.overview ?? "").descriptionStyle
                        RatingMovieView(detailModel: detailModel)
                    }.padding([.leading, .trailing], 16)
                    Reviews(detailModel: detailModel)
                }
            }
        }
        .onAppear {
            detailModel.idMovie = movieId ?? 0
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: FavoriteButtonView(movieId: movieId))
        .background(Color(UIColor(named: "background_color")!))
    }
}
