//
//  HeadView.swift
//  Dunlop
//
//  Created by Kritbovorn on 22/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct HeadView: View {
    var body: some View {
        
                
        GeometryReader { mainGeo in
            
            ZStack {
                
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    
                    GeometryReader { firstGeo in
                        
                        ZStack {
                            
                            
                            
                            Rectangle()
                            .fill(Color(red: 249/255, green: 249/255, blue: 88/255))
                                .cornerRadius(firstGeo.size.width / 18)
                            .modifier(LightLayoutInverseShapeWidthHeightNeumorphicViewModifier(resize: 0.92))
                            
                            VStack(spacing: 0) {
                                
                                GeometryReader { aGeo in
                                    
                                    VStack(spacing: 0) {
                                        
                                        GeometryReader { aaGeo in
                                            
                                            Image("history")
                                            .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: firstGeo.size.width * 0.85, height: firstGeo.size.height * 0.8)
                                        }
                                        .frame(height: aGeo.size.height * 0.92)
                                        
                                        GeometryReader { abGeo in
                                            
                                            EmptyView()
                                        }
                                        .frame(height: aGeo.size.height * 0.08)
                                        //.background(Color.gray)
                                    }
                                }
                                
                                
                            
                            }
                                
                        }
                    }
                    .frame(height: mainGeo.size.height * 0.3)
                    .background(Color(red: 249/255, green: 249/255, blue: 88/255))
                    
                    GeometryReader { secondGeo in
                        
                        EmptyView()
                    }
                    .frame(height: mainGeo.size.height * 0.7)
                }
                
                
            }
        }
        
    }
}

struct HeadView_Previews: PreviewProvider {
    static var previews: some View {
        HeadView()
    }
}
