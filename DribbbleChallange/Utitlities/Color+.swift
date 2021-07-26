//
//  Color+.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/26.
//

import SwiftUI

enum ColorAsset: String {
    
    case Primary
    
    case Secondary
    
    case BackgroundFields
    
    case Background1
    
}

extension Color {
    
    static func asset(_ asset: ColorAsset) -> Color {
        
        return Color(asset.rawValue)
    }
}
