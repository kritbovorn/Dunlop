//
//  SubHeadView1.swift
//  Dunlop
//
//  Created by Kritbovorn on 22/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct SubCardHeadView1: View {
    
    var contentResize: CGFloat
    var imageName: String
    
    var body: some View {
        
        
        GeometryReader { mainGeo in
            
            GeometryReader { geo in
                
                ZStack {
                    
                    Rectangle()
                        .fill(Color(red: 249/255, green: 249/255, blue: 88/255))
                        .cornerRadius(mainGeo.size.width / 18)
                        .modifier(LightLayoutInverseShapeWidthHeightNeumorphicViewModifier(resize: 0.95))
                    
                    VStack(spacing: 0) {
                        
                        GeometryReader { image in
                            
                            Image(self.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: image.size.width * 0.95, height: image.size.height * 0.8)
                        }
                        .frame(height: geo.size.height * 0.88)
                        
                        GeometryReader { pageControl in
                            
                            VStack(spacing: 0) {
                                
                                Text("Boie")
                                
                                Spacer()
                            }
                        }
                        .frame(height: geo.size.height * 0.12)
                        //.background(Color.gray)
                        
                        Spacer()
                        
                    }
                }
            }
            .frame(height: mainGeo.size.height * self.contentResize)
            
        }
        
        
        
    }
}

struct SubHeadView1_Previews: PreviewProvider {
    static var previews: some View {
        SubCardHeadView1(contentResize: 0.3, imageName: "present")
    }
}
