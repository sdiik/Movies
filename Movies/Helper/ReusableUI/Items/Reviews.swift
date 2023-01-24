//
//  Reviews.swift
//  Movies
//
//  Created by ahmad shiddiq on 24/01/23.
//

import Foundation
import SwiftUI

struct Reviews: View {
    @ObservedObject var detailModel: DetailViewModel
    
    var body: some View {
        if let alreadyReviews = self.detailModel.reviewsMovie?.results, !alreadyReviews.isEmpty {
            ScrollView(.vertical) {
                Spacer()
                Text("Reviews Movie").titleStyle.frame(width: UIScreen.main.bounds.width - 32, alignment: .leading)
                LazyVStack {
                    ForEach(alreadyReviews) { review in
                        Review(review: review)
                    }
                }
            }
        }
    }
}
