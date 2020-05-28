//
//  SelectedButtonView.swift
//  Dunlop
//
//  Created by Kritbovorn on 28/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct SelectedButtonView: View {
    
    var contentSize: CGFloat
    var image: Image
    
    var body: some View {
        
        GeometryReader { mainGeo in
            
            ZStack {
                
                Circle()
                .foregroundColor(Color(red: 255/255, green: 212/255, blue: 0/255))
                    .frame(width: mainGeo.size.height * self.contentSize, height: mainGeo.size.height * self.contentSize)
                    .cornerRadius((mainGeo.size.height * self.contentSize) / 4)
                
                Circle()
                .foregroundColor(Color(red: 255/255, green: 212/255, blue: 0/255))
                    .frame(width: mainGeo.size.height * self.contentSize, height: mainGeo.size.height * self.contentSize)
                .inverseMase(
                    Rectangle()
                    .padding((mainGeo.size.height * self.contentSize) / 24)
                )
                
                    .shadow(color: Color.lairShadowGray.opacity(0.7), radius: 3, x: 3, y: 3)
                    .shadow(color: Color.white.opacity(0.7), radius: 3, x: -3, y: -3)
                .clipShape(Circle())
                
                
                LinearGradient.lairHorizontalDarkReverse
                .frame(width: (mainGeo.size.height * self.contentSize) / 2, height: (mainGeo.size.height * self.contentSize) / 2)
                .mask(
                    self.image
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                )
                
                .shadow(color: Color.lairShadowGray.opacity(0.7), radius: 12, x: 12, y: 12)
                    .shadow(color: Color.white.opacity(0.7), radius: 8, x: -8, y: -8)
                .clipShape(RoundedRectangle(cornerRadius: (mainGeo.size.height * self.contentSize) / 4))
                
                
                
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient.lairHorizontalDark, lineWidth: 4)
            )
        }
    }
}

struct SelectedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedButtonView(contentSize: 0.3, image: Image(systemName: "pencil.tip"))
    }
}
