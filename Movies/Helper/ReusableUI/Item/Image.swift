//
//  Image.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import SDWebImageSwiftUI
import SwiftUI

func showImage(with url: String) -> some View {
    AnimatedImage(url: URL(string: (url).validationImageUrl))
        .indicator(.activity)
        .transition(.fade(duration: 0.5))
        .scaledToFit()
        .cornerRadius(radius: 12.0, corners: [.topLeft, .topRight])
        .frame(width: UIScreen.main.bounds.width, height: 200, alignment: .center)
}
