//
//  ContentView.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTabIndex: Int = 0
    
    var body: some View {
        
        GeometryReader { proxy in
            
            ZStack {
                
                VStack(spacing: 0) {
                    
                    switch selectedTabIndex {
                    
                    case 0:
                        HomeView()
                            .padding(.top, proxy.safeAreaInsets.top)
                        
                    default:
                        VStack {
                            Spacer()
                            Text("Hello")
                            Spacer()
                            
                        }
                        
                    }
                    
                    Tabbar(selectedTabIndex: self.$selectedTabIndex)
                        
                }
                .edgesIgnoringSafeArea(.bottom)
                .background(Color.asset(.Background1))
                
            }
            .background(Color.asset(.Background1))
            .edgesIgnoringSafeArea(.all)
        
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
