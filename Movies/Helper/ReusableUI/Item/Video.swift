//
//  Video.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import SwiftUI

struct Video: View {
    @State var id: String
    
    var body: some View {
        YTWrapper(videoID: $id).frame(width: UIScreen.main.bounds.width, height: 200, alignment: .center)
    }
}
