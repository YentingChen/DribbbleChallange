//
//  SearchTextField.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/27.
//

import SwiftUI

struct SearchTextField: View {
    
    @State private var text: String = ""
    
    var body: some View {
        
        HStack {
            
            Spacer(minLength: 30)
            
            HStack {
                TextField("Search for 3D products", text: $text)
                    .modifier(GrayBodyStyle())
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.asset(.Primary))
                    .padding(.trailing, 20)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color("BackgroundFields")))
            
            Spacer(minLength: 30)
            
        }
        
    }
}

struct SearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextField()
    }
}
