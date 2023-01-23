//
//  TabBarView.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import SwiftUI

struct TabBarView: View {
    @State private var tabSelection = TabBarEntity.home.selected
    
    var body: some View {
        
        TabView(selection: $tabSelection) {
            setNavigationBar(with: .home, menuTab: MoviesView())
            setNavigationBar(with: .search, menuTab: SearchView())
            setNavigationBar(with: .favorite, menuTab: FavoriteView())
        }.accentColor(.black)
    }
}
