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

extension Text {
    var headerStyle : Text {
        self.font(.system(size: 16, weight: .semibold, design: .default))
    }
    
    var titleStyle : Text {
        self.font(.system(size: 14, weight: .semibold, design: .default))
    }
    
    var descriptionStyle : Text {
        self.font(.system(size: 14, weight: .regular, design: .default))
    }
}
