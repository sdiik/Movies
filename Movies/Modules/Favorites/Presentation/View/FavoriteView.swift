//
//  FavoriteView.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import SwiftUI

struct FavoriteView: View {
    @ObservedObject var favoriteModel = FavoriteViewModel()
    
    var body: some View {
        EmptyView(title: $favoriteModel.isEmptyMessage)
    }
}
