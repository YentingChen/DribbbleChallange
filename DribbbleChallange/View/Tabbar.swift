//
//  Tabbar.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/26.
//

import SwiftUI

struct Tabbar: View {
    
    @Binding var selectedTabIndex: Int 
    
    private let tabBarImageNames = ["house", "heart", "cube", "person"]
    
    var body: some View {
        
        HStack{
            
            Spacer().frame(width: 10)
            
            ForEach(0..<tabBarImageNames.count, id: \.self) { num in
                HStack {
                    Spacer()
                    Button(action: {
                        
                        self.selectedTabIndex = num
                        
                    }, label: {
                        
                        VStack {
                            Spacer().frame(height: 6)
                            Image(systemName: tabBarImageNames[num])
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .light, design: .default))
                            Spacer().frame(height: 6)
                            Circle().strokeBorder(lineWidth: 1)
                                .frame(width: 5, height: 5)
                                .foregroundColor(.white)
                                .opacity(selectedTabIndex == num ? 1 : 0)
                        }
                        
                    }).tag(num)
                    Spacer()
                }.font(.system(size: 24, weight: .semibold))
            }
            
            Spacer().frame(width: 10)
        
        }
        .frame(height: 84)
        .frame(maxWidth: .infinity)
        .background(Color.asset(.Primary))
        .cornerRadius(20, corners: [.topLeft, .topRight])
    
    }
}

