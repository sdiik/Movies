//
//  EmptyView.swift
//  Movies
//
//  Created by ahmad shiddiq on 22/01/23.
//

import SwiftUI

struct EmptyView: View {
    @Binding var title: String
    
    var body: some View {
        VStack(spacing: 2) {
            Image(uiImage: UIImage(named: "empty_movie_icon")!).resizable().frame(width: 50, height: 50)
            setEmptyTitle(with: title)
        }
    }
}
