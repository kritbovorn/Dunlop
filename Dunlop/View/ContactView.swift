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
            
            Color(red: 255/255, green: 222/255, blue: 0/255)
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
                    
                    GeometryReader { oneGeo in
                                
                        
                        Text("Boie CONTACT")
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
