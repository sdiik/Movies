//
//  Genre.swift
//  Movies
//
//  Created by ahmad shiddiq on 19/01/23.
//

import SwiftUI

func genre(for text: String) -> some View {
    Text(text)
        .padding(.all, 5)
        .font(.system(size: 14, weight: .semibold))
        .background(Color(UIColor(named: "view_color")!))
        .cornerRadius(5)
}
