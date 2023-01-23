//
//  StringExtension.swift
//  Movies
//
//  Created by ahmad shiddiq on 19/01/23.
//

import Foundation

extension String {
    
    var notAvailable: String {
        return "No \(self) available."
    }
    
    var validationImageUrl: String {
        return BASE_URL_IMAGE+self
    }
}
