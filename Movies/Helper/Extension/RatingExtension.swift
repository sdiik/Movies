//
//  RatingExtension.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Cosmos
import SwiftUI

struct Rating: UIViewRepresentable {
    @State var rating: Double

    func makeUIView(context: Context) -> CosmosView {
        CosmosView()
    }

    func updateUIView(_ uiView: CosmosView, context: Context) {
        uiView.rating = rating / 2
        uiView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        uiView.settings.starMargin = 2
        uiView.settings.totalStars = 5
        uiView.settings.starSize = 20
    }
}
