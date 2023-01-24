//
//  Banner.swift
//  Movies
//
//  Created by ahmad shiddiq on 16/01/23.
//

import Combine
import SDWebImageSwiftUI
import SwiftUI

struct Banner: View {
    @State var movie : DiscoverMovie
    
    var body: some View {
        HStack(spacing: 8) {
            Spacer()
            AnimatedImage(url: URL(string: (self.movie.poster_path ?? "").validationImageUrl))
                .resizable()
                .placeholder(UIImage(named: "empty_movie_icon"))
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .scaledToFill()
                .frame(width: 70, height: 70, alignment: .center)
            VStack(alignment: .leading, spacing: 4) {
                Spacer()
                Text(self.movie.title ?? "-").font(.system(size: 14, weight: .semibold)).frame(width: UIScreen.main.bounds.width - 120, alignment: .leading)
                Text(self.movie.overview ?? "-").font(.system(size: 12)).lineLimit(3).frame(alignment: .leading)
                Spacer()
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 24, height: 100, alignment: .leading)
        .background {
            RoundedRectangle(cornerRadius: 12.0)
                .fill(Color(UIColor(named: "view_color")!))
        }
    }
}
