//
//  LayoutView.swift
//  Dunlop
//
//  Created by Kritbovorn on 22/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct LayoutView: View {
    
   @State private var isHiddenA = true
    
    var body: some View {
        
        
        GeometryReader { mainGeo in
            
            ZStack {
                
                Color(red: 249/255, green: 249/255, blue: 88/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    
            // FIXME: - First
                    GeometryReader { firstGeo in
                        
                        // เนื้อหา แรก
                        
                        SubCardHeadView1( isHiddenA: self.$isHiddenA, contentResize: self.isHiddenA ?  0 :  0.9, imageName: "present")
                        
                        
                    }
                    .frame(height: self.isHiddenA ? mainGeo.size.height * 0 : mainGeo.size.height * 0.3)
                        
                    
                    
            // FIXME: - Second
                    GeometryReader { secondGeo in
                        
                        VStack(spacing: 0) {
                            
                            // FIXME: - Second ONE
                            GeometryReader { secondAGeo in
                                
                                RoundedRectangle(cornerRadius: secondGeo.size.width / 16)
                                .fill(Color(red: 249/255, green: 249/255, blue: 88/255))
                                    .modifier(LightLayoutShapeWidthHeightNeumorphicViewModifier(resize: 0.95))
                                
                            }
                            .frame(height: secondGeo.size.height * 0.8)
                            
                            
                            // FIXME: - Second TWO
                            GeometryReader { secondBGeo in
                                
                                Button(action: {
                                    
                                    withAnimation {
                                        
                                        self.isHiddenA.toggle()
                                    }
                                    
                                }, label: {
                                    
                                    Text(":Boie:")
                                })
                                
                            }
                            .frame(height: secondGeo.size.height * 0.2)
                        }
                    }
                    .frame(height: self.isHiddenA ? mainGeo.size.height * 1 : mainGeo.size.height * 0.7)
                        //.frame(height: mainGeo.size.height * 0.7)
                }
            }
            
            
        }
        
        
    }
}

struct LayoutView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutView()
    }
}
