//
//  SubHeadView.swift
//  Dunlop
//
//  Created by Kritbovorn on 22/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct SubCardHeadView: View {
    
    var contentResize: CGFloat
    
    var body: some View {
        
        
        GeometryReader { mainGeo in
            
            ZStack {
            
                GeometryReader { geo in
                        
                        Rectangle()
                        .fill(Color(red: 249/255, green: 249/255, blue: 88/255))
                            .cornerRadius(geo.size.width / 18)
                        .modifier(LightLayoutInverseShapeWidthHeightNeumorphicViewModifier(resize: 0.92))
                        
                        VStack(spacing: 0) {
                            
                            GeometryReader { aGeo in
                                
                                VStack(spacing: 0) {
                                    
                                    GeometryReader { aaGeo in
                                        
                                        Image("history")
                                        .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: aGeo.size.width * 0.85, height: aGeo.size.height * 0.9)
                                    }
                                    .frame(height: aGeo.size.height * 0.92)
                                    
                                    GeometryReader { bGeo in
                                        
                                        EmptyView()
                                    }
                                    .frame(height: aGeo.size.height * 0.08)
                                    .background(Color.gray)
                                }
                            }
                        }
                            
                    }
                    
                }
                .frame(height: mainGeo.size.height * self.contentResize)
              
        }
        
        
        
    }
}

struct SubHeadView_Previews: PreviewProvider {
    static var previews: some View {
        SubCardHeadView(contentResize: 0.3)
    }
}
