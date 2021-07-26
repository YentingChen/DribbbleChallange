//
//  CardScrollView.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/26.
//

import SwiftUI

struct CardScrollView: View {
    
    let products = [
        Product(imageName: ImageAsset.ProductImage1.rawValue, title: "Geometry 3D Elements", description: "Hold up a rectangular peice of paper and ask all the favourite students."),
        Product(imageName: ImageAsset.ProductImage2.rawValue, title: "Abstract 3D Elements", description: "An abstract may act as stand-alone entity the instead of a full paper")
    ]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHStack(spacing: 30) {
                
                ForEach(0..<products.count, id: \.self) { num in
                    
                    CardView(product: products[num])
                }
                
           
            }.padding([.horizontal], 30)
            
        }
    }
}

struct CardScrollView_Previews: PreviewProvider {
    static var previews: some View {
       CardScrollView()
       
    }
}
