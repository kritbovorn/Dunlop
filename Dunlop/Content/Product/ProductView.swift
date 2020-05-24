//
//  ProductView.swift
//  Dunlop
//
//  Created by Kritbovorn on 23/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct ProductView: View {
    
    let uuid = UUID()
    var resizeContent: CGFloat
    var fillColor: Color
    var imageName: Image
    var title: String
    
    var body: some View {
        
        GeometryReader { mainGeo in
            
            VStack {
                
                GeometryReader { geo in
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: geo.size.width / 6)
                            .fill(self.fillColor)
                        
                        VStack(spacing: 0) {
                            
                            Spacer()
                            
                            self.imageName
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                
                                .shadow(color: Color.white.opacity(0.7), radius: geo.size.width * 0.01, x: -geo.size.width * 0.01, y: -geo.size.width * 0.01)
                                .shadow(color: Color.lairShadowGray, radius: geo.size.width * 0.01, x: geo.size.width * 0.01, y: geo.size.width * 0.01)
                            
                            Text(self.title)
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.lairDarkGray)
                                
                                .shadow(color: Color.white.opacity(0.9), radius: geo.size.width * 0.004, x: -geo.size.width * 0.004, y: -geo.size.width * 0.004)
                                .shadow(color: Color.lairShadowGray, radius: geo.size.width * 0.005, x: geo.size.width * 0.005, y: geo.size.width * 0.005)
                            
                            
                            
                            Spacer()
                        }
                    }
                }
                .frame(height: mainGeo.size.height * self.resizeContent)
                .overlay(
                    RoundedRectangle(cornerRadius: mainGeo.size.width / 6)
                        .stroke(LinearGradient.lairDiagonalDarkBorder, lineWidth: mainGeo.size.width * 0.002)
                )
                    .background(Color.lairBackgroundGray)
                    .cornerRadius(mainGeo.size.width / 6)
                    
                    .shadow(color: Color.white.opacity(0.5), radius: mainGeo.size.width * 0.005, x: -mainGeo.size.width * 0.005, y: -mainGeo.size.width * 0.005)
                    .shadow(color: Color.lairShadowGray.opacity(0.5), radius: mainGeo.size.width * 0.005, x: mainGeo.size.width * 0.005, y: mainGeo.size.width * 0.005)
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(resizeContent: 0.3, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT LM705")
    }
}
