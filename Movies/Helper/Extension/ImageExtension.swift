//
//  ImageExtension.swift
//  Movies
//
//  Created by ahmad shiddiq on 24/01/23.
//

import SwiftUI

func favorite() -> some View {
    Image("favorite_icon")
        .renderingMode(.template)
        .foregroundColor(.red)
 }

func notFavorite() -> some View {
    Image("favorite_icon")
        .renderingMode(.template)
        .foregroundColor(.white)
}
