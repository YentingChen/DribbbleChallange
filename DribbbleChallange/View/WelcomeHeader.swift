//
//  WelcomeHeader.swift
//  DribbbleChallange
//
//  Created by Yenting Chen on 2021/7/27.
//

import SwiftUI

struct WelcomeHeader: View {
    
    var body: some View {
        
        HStack {
            
            VStack(alignment:.leading) {
                Text("Good morning,")
                    .modifier(TitleStyle())
                Text("Shaileen")
                    .modifier(LargeTitleStyle())
            }
            
            Spacer()
            
            Image.asset(.ProfileImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
        }
        .padding(.horizontal, 30)
    }
}

struct WelcomeHeader_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeHeader()
    }
}
