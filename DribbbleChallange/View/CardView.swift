//
//  CardView.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/26.
//

import SwiftUI

struct CardView: View {
    
    let product: Product
    
    let cardWidth: CGFloat = 250
    
    var body: some View {
        
        VStack {
            
            Image(product.imageName)
                .resizable()
                .frame(width: cardWidth, height: 200.0)
            
            VStack(alignment: .leading) {
                
                Text(product.title).modifier(HeadLineStyle())
                    .padding(.horizontal, 10)
                
                Text(product.description).modifier(FootNoteStyle())
                    .padding(.leading, 10)
                    .padding(.top, 5)
                
            }
            .padding(.horizontal, 8)
            .padding(.top, 15)
            
        }
        .frame(maxWidth: cardWidth, maxHeight: 320, alignment: .top)
        .background(Color.asset(.BackgroundFields))
        .cornerRadius(30)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        
        HStack {
            
            CardView(product: Product(imageName: ImageAsset.ProductImage1.rawValue, title: "Geometry 3D Elements", description: "Hold up a rectangular peice of paper and ask all the favourite students.")).background(Color.red)
            
           
            
        }
       
    }
}
