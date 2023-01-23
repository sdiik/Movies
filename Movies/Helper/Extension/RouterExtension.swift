//
//  RouterExtension.swift
//  Movies
//
//  Created by ahmad shiddiq on 23/01/23.
//

import Combine
import SwiftUI

protocol NavigatingRouter: ObservableObject {
    associatedtype NavigationState
    var navigationState: NavigationState { get set }
}

extension NavigatingRouter {
    
    func binding<T>(keyPath: WritableKeyPath<NavigationState, T>) -> Binding<T> {
        Binding(
            get : { self.navigationState[keyPath: keyPath]},
            set : { self.navigationState[keyPath: keyPath] = $0 }
        )
    }
}
