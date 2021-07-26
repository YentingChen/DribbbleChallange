//
//  FilterType.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/27.
//

import SwiftUI

enum FilterType: String, CaseIterable {
    
    case recent = "Recent"
    
    case trending = "Trending"
    
    case popular = "Popular"
    
    case premium = "Premium"
    
    func image() -> Image {
        
        switch self {
        
        case .recent:
            return Image(systemName: "clock")
        case .trending:
            return Image(systemName: "flame")
        case .popular:
            return Image(systemName: "crown")
        case .premium:
            return Image(systemName: "diamond")
            
        }
    }
}
