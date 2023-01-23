//
//  TextExtension.swift
//  Movies
//
//  Created by ahmad shiddiq on 19/01/23.
//

import SwiftUI

func setSection(with title: String) -> some View  {
    Text(title)
        .padding([.leading, .top] , 16)
        .font(.system(size: 16, weight: .semibold))
        .frame(maxWidth: .infinity, alignment: .leading)
}

func setEmptyTitle(with title: String) -> some View  {
    Text(title)
        .padding([.leading, .top] , 16)
        .font(.system(size: 16, weight: .semibold))
        .frame(maxWidth: .infinity, alignment: .center)
}
