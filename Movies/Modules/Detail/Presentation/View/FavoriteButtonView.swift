//
//  FavoriteButtonView.swift
//  Movies
//
//  Created by ahmad shiddiq on 24/01/23.
//

import SwiftUI

struct FavoriteButtonView: View {
    @State var movieId: Int?
    @State private var pressed = false
        
    var body: some View {
        Button(action: {
            if FavoritesSaved.isAlreadyFavoriteId(id: movieId ?? 0) {
                FavoritesSaved.removeFavoriteId(id: movieId ?? 0)
            } else {
                FavoritesSaved.setFavoriteIds(with: movieId ?? 0)
            }
            self.pressed.toggle()
        }) {
            if self.pressed {
                if let alreadyId = movieId, FavoritesSaved.isAlreadyFavoriteId(id: alreadyId) {
                    favorite()
                } else {
                    notFavorite()
                }
            } else {
                if let alreadyId = movieId, FavoritesSaved.isAlreadyFavoriteId(id: alreadyId) {
                    favorite()
                } else {
                    notFavorite()
                }
            }
        }
    }
}
