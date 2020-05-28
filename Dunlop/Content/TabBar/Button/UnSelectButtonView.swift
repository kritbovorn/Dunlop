//
//  UnSelectedButtonView.swift
//  Dunlop
//
//  Created by Kritbovorn on 28/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct UnSelectButtonView: View {
    
    var contentSize: CGFloat
    var image: Image
    
    var body: some View {
        
        GeometryReader { mainGeo in
            
            ZStack {
                
                LinearGradient.lairHorizontalDarkReverse
                    .frame(width: (mainGeo.size.height * self.contentSize) / 2, height: (mainGeo.size.height * self.contentSize) / 2)
                
                Rectangle()
                    .inverseMase(UnSelectedButtonMaskView(contentSize: 1, image: self.image))
                    .frame(width: (mainGeo.size.height * self.contentSize), height: (mainGeo.size.height * self.contentSize))
                    .foregroundColor(Color(red: 255/255, green: 212/255, blue: 0/255))
                    
                    .shadow(color: Color.lairShadowGray, radius: 3, x: 3, y: 3)
                    .shadow(color: Color.white, radius: 3, x: -3, y: -3)
                    
                    .clipShape(RoundedRectangle(cornerRadius: (mainGeo.size.height * self.contentSize) / 2))
            }
            //.compositingGroup()
            .shadow(color: Color.white.opacity(0.7), radius: 2, x: -2, y: -2)
            .shadow(color: Color.lairShadowGray.opacity(0.5), radius: 2, x: 2, y: 2)
        }
    }
}

struct UnSelectButtonView_Previews: PreviewProvider {
    static var previews: some View {
        UnSelectButtonView(contentSize: 0.3, image: Image(systemName: "person.fill"))
    }
}
