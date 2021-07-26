//
//  CardPicker.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/27.
//

import SwiftUI

struct CardPicker: View {
    
    @State private var selection: FilterType = .recent
    
    var body: some View {
        
        HStack {
            
            ForEach(FilterType.allCases, id: \.self) { item in
                
                CardPickerItem(type: item, selection: selection)
                    .onTapGesture {
                        
                        selection = item
                    
                    }
                
                if item != .premium {
                    Spacer()
                    
                }

            }
            
        }
        .frame(maxWidth: .infinity)
        .padding([.horizontal], 30)
        
    }
}

struct CardPicker_Previews: PreviewProvider {
    static var previews: some View {
        CardPicker()
    }
}
