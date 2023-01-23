//
//  Videos.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Foundation
import SDWebImageSwiftUI
import SwiftUI

struct Videos: View {
    @ObservedObject var detailModel: DetailViewModel
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                if let alreadyVideos = detailModel.videosMovie?.results, !alreadyVideos.isEmpty {
                    ForEach(alreadyVideos) { video in
                        Video(id: video.key ?? "")
                    }
                } else {
                    showImage(with: detailModel.detailMovie?.poster_path ?? "")
                }
            }
        }
    }
}
