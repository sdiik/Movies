//
//  TabBarEntity.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import Foundation

enum TabBarEntity {
    case favorite, home, search
    
    var barTitle: String {
        switch self {
        case .favorite:
            return "Favorites"
        case .home:
            return "Home"
        case .search:
            return "Search"
        }
    }
    
    var taBarImage: String {
        switch self {
        case .favorite:
            return "heart.fill"
        case .home:
            return "house.fill"
        case .search:
            return "magnifyingglass"
        }
    }
    
    var selected: Int {
        switch self {
        case .home:
            return 1
        case .favorite:
            return 3
        case .search:
            return 2
        }
    }
}
