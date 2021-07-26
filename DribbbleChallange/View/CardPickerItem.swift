//
//  CardPickerItem.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/27.
//

import SwiftUI

struct CardPickerItem: View {
    
    let type: FilterType
    
    let selection: FilterType
    
    var foregroundColor: Color {
        type == selection ? Color.white : Color.gray
        
    }

    var backgroundColor: Color {
        type == selection ? Color.asset(.Secondary) : Color.asset(.BackgroundFields)
        
    }
    
    var tintColor: Color {
        type == selection ? Color.asset(.Secondary) : Color.gray
        
    }
    
    var body: some View {
        
        VStack {
            
            ZStack {
                
                type.image()
                    .foregroundColor(foregroundColor)
            }
            .frame(width: 60, height: 60)
            .background(RoundedRectangle(cornerRadius: 10).fill(backgroundColor))
            
            Text(type.rawValue)
                .modifier(ButtonTitleStyle())
                .foregroundColor(tintColor)
                .padding(.top, 4)
        }
    }
}
