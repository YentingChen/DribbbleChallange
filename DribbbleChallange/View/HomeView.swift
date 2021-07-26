//
//  HomeView.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/27.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                WelcomeHeader()
                    .padding(.top, 10)
                
                SearchTextField()
                    .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                CardPicker()
                    .padding(.vertical, 20)
                
                ProductsTitle()
                    .padding(.top, 20)
                
                CardScrollView()
                
            }
            .padding(.top)
            .padding(.bottom)
            
        }
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
