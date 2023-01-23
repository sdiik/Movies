//
//  FavoriteViewModel.swift
//  Movies
//
//  Created by ahmad shiddiq on 22/01/23.
//

import Combine
import Foundation

class FavoriteViewModel: ObservableObject {

    @Published var isEmptyMessage = "You don't have a favorite movie yet"
    
}
