//
//  ProductsTitle.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/27.
//

import SwiftUI

struct ProductsTitle: View {
    
    var body: some View {
        
        HStack {
            
            Text("Recommended Products")
                .modifier(TitleStyle())
                .multilineTextAlignment(.leading)
            
            Spacer()
            
        }.padding([.horizontal], 30)
    
    }
}

struct ProductsTitle_Previews: PreviewProvider {
    static var previews: some View {
        ProductsTitle()
    }
}
