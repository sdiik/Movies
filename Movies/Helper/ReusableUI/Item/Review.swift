//
//  Review.swift
//  Movies
//
//  Created by ahmad shiddiq on 24/01/23.
//

import Combine
import SDWebImageSwiftUI
import SwiftUI

struct Review: View {
    @State var review : ReviewMovieResult
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 8) {
                AnimatedImage(url: URL(string: (self.review.author_details?.avatar_path ?? "").validationImageUrl))
                    .resizable()
                    .placeholder(UIImage(named: "empty_movie_icon"))
                    .indicator(.activity)
                    .transition(.fade(duration: 0.5))
                    .scaledToFill()
                    .cornerRadius(radius: 30, corners: .allCorners)
                    .frame(width: 60, height: 60, alignment: .center)
                VStack(alignment: .leading, spacing: 4) {
                    Spacer()
                    Text(self.review.author_details?.username ?? "").titleStyle
                    Text(self.review.created_at ?? "").descriptionStyle
                    Spacer()
                }
            }
            Text(self.review.content ?? "").descriptionStyle
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 36, alignment: .leading)
    }
}
