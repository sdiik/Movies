//
//  Movie.swift
//  Movies
//
//  Created by ahmad shiddiq on 19/01/23.
//

import SDWebImageSwiftUI
import SwiftUI

struct Movie: View {
    @State var movie : DiscoverMovie
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            AnimatedImage(url: URL(string: (self.movie.poster_path ?? "").validationImageUrl))
                .resizable()
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .scaledToFit()
                .cornerRadius(radius: 12.0, corners: [.topLeft, .topRight])
            Text(self.movie.title ?? "").font(.system(size: 12, weight: .regular)).lineLimit(2).frame(height: 50, alignment: .center).padding(2)
        }
        .frame(width: 100, height: 150, alignment: .top)
        .background {
            RoundedRectangle(cornerRadius: 12.0)
                .fill(Color(UIColor(named: "view_color")!))
        }
    }
}
