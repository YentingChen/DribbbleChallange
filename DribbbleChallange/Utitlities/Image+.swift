//
//  Image+.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/26.
//

import SwiftUI

enum ImageAsset: String {
    
    case ProductImage1
    
    case ProductImage2
    
    case ProfileImage
}

extension Image {
    
    static func asset(_ asset: ImageAsset) -> Image {
        
        return Image(asset.rawValue)
    }
}
