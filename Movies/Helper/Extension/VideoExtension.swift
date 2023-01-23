//
//  VideoExtension.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import SwiftUI
import youtube_ios_player_helper

struct YTWrapper: UIViewRepresentable {
    @Binding var videoID: String
    
    func makeUIView(context: Context) -> YTPlayerView {
        let playerView = YTPlayerView()
        playerView.load(withVideoId: videoID)
        return playerView
    }
    
    func updateUIView(_ uiView: YTPlayerView, context: Context) {
        // update view
    }
}
