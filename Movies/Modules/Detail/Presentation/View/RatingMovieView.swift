//
//  RatingMovieView.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import SwiftUI

struct RatingMovieView: View {
    @ObservedObject var detailModel: DetailViewModel
    
    var body: some View {
        LazyHStack(spacing: 8) {
            if let alreadyRating = detailModel.detailMovie?.vote_average {
                Text("\(Int(alreadyRating/2)) out of 5").font(.system(size: 14, weight: .bold, design: .default))
                Rating(rating: alreadyRating)
            }
        }
    }
}
