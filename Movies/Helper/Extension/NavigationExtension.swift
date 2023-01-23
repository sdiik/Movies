//
//  NavigationExtension.swift
//  Movies
//
//  Created by ahmad shiddiq on 21/01/23.
//

import SwiftUI

func setNavigationBar(with tabBar: TabBarEntity, menuTab: some View) -> some View {
    NavigationView {
        menuTab.navigationTitle(tabBar.navigationTitle)
    }.navigationBarHidden(false)
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
        .tabItem {
            Label(tabBar.barTitle, systemImage: tabBar.taBarImage)
        }
}
