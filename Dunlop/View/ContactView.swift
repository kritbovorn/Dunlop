//
//  ContactView.swift
//  Dunlop
//
//  Created by Kritbovorn on 28/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct ContactView: View {
    
    @State var selectedTabBar = TabView.contact
    
    var body: some View {
        
        
        ZStack {
            
            Color(red: 255/255, green: 212/255, blue: 0/255)
            .opacity(0.2)
            .edgesIgnoringSafeArea(.all)
            
            // FIXME: - MAIN
            GeometryReader { mainGeo in
                
                    
                VStack(spacing: 0) {
                    
                    GeometryReader { geo in
                            
                        VStack(spacing: 0) {
                            
                            Spacer()
                            
                            HStack {
                                
                                Spacer()
                                
                                Image("dunlop-logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geo.size.width * 0.5)
                                
                                Spacer()
                            }
                            
                            Spacer()
                        }
                        
                    }
                    .frame(height: mainGeo.size.height * 0.08)
                    // Start Content
                    GeometryReader { oneGeo in
                                
                        
                        VStack(spacing: 0) {
                            
                            GeometryReader { firstContent in
                                
                                VStack(spacing: 0) {
                                    
                                    Image("logo-1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .shadow(color: Color.lairShadowGray.opacity(0.9), radius: firstContent.size.width * 0.004, x: firstContent.size.width * 0.004, y: firstContent.size.width * 0.004)
                                        .shadow(color: Color.lairShadowGray, radius: firstContent.size.width * 0.002, x: -firstContent.size.width * 0.003, y: -firstContent.size.width * 0.003)
                                    
                                    Text("บริษัท สิทธิชัยยางยนต์ จำกัด")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(.lairDarkGray)
                                        
                                        .shadow(color: Color.white.opacity(0.9), radius: firstContent.size.width * 0.004, x: -firstContent.size.width * 0.004, y: -firstContent.size.width * 0.004)
                                        .shadow(color: Color.lairShadowGray, radius: firstContent.size.width * 0.005, x: firstContent.size.width * 0.005, y: firstContent.size.width * 0.005)
                                    
                                    Spacer()
                                }
                            }
                            .frame(height: oneGeo.size.height * 0.3)
                            //.background(Color.gray)
                            
                            GeometryReader { secondContent in
                                
                                EmptyView()
                            }
                            .frame(height: oneGeo.size.height * 0.7)
                            //.background(Color.green)
                        }
                    }
                    .frame(minHeight: mainGeo.size.height * 0.82)

                    
                    
                    
                    
                }   // Finish  Main VStack
            }   // Finish Geometry
        }
        
        // MARK: -  Finish  ZStack
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
