//
//  CategoryTextView.swift
//  Dunlop
//
//  Created by Kritbovorn on 24/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct CategoryTextView: View {
    
    var title: String
    var contentsize: CGFloat
    var fontSize: CGFloat
    
    var body: some View {
        
        
        GeometryReader { mainGeo in
            
            VStack(spacing: 0) {
                
                GeometryReader { geo in
                    
                    VStack(spacing: 0) {
                        
                        Spacer()
                        
                        HStack {
                            
                            
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: geo.size.height * 0.6)
                            
                                .shadow(color: Color.white.opacity(0.9), radius: geo.size.width * 0.004, x: -geo.size.width * 0.004, y: -geo.size.width * 0.005)
                                .shadow(color: Color.lairShadowGray, radius: geo.size.width * 0.004, x: geo.size.width * 0.004, y: geo.size.width * 0.004)
                            
                            Text(self.title)
                                .font(.system(size: self.fontSize, weight: .bold))
                            .foregroundColor(.lairDarkGray)
                            
                            .shadow(color: Color.white.opacity(0.9), radius: geo.size.width * 0.004, x: -geo.size.width * 0.004, y: -geo.size.width * 0.004)
                            .shadow(color: Color.lairShadowGray, radius: geo.size.width * 0.004, x: geo.size.width * 0.004, y: geo.size.width * 0.004)
                        }
                        
                        Spacer()
                        
                        
                    }
                    
                    
                }
                .frame(height: mainGeo.size.height * self.contentsize)
                
            }
        }
    }
}

struct CategoryTextView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTextView(title: "Boie", contentsize: 0.1, fontSize: 24)
    }
}
