//
//  TextStyleGuide.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/26.
//

import SwiftUI

struct LargeTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 28, weight: .bold, design: .serif))
            .foregroundColor(Color.asset(.Primary))
    }
}

struct TitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 19, weight: .medium, design: .serif))
            .foregroundColor(Color.asset(.Primary))
    }
}

struct HeadLineStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(Color.asset(.Primary))
    }
    
}

struct FootNoteStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content.font(.footnote)
            .foregroundColor(Color.asset(.Primary))
    }
    
}

struct ButtonTitleStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 12, design: .serif))
    }
}

struct GrayBodyStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .font(.system(size: 15))
            .foregroundColor(Color.gray)
        
        
    }
}

struct TextStyleGuide_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            
            Text("Text").modifier(LargeTitleStyle())
            Text("Text").modifier(HeadLineStyle())
            
        }
        
    }
}
