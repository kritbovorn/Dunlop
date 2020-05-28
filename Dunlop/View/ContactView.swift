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
                    .frame(height: mainGeo.size.height * 0.1)
                    
                    GeometryReader { oneGeo in
                                
                        
                        EmptyView()
                    }
                    .frame(minHeight: mainGeo.size.height * 0.8)

                    
                    GeometryReader { secondGeo in
                        
                        //EmptyView()
                        TabBarRowView(selectedTabBar: self.$selectedTabBar, tabBarItems: [
                            TabBarItemView(selectedTabBar: self.$selectedTabBar, tabView: .home, imageName: Image(systemName: "tray.full.fill"), contentSize: 0.85),
                            
                            TabBarItemView(selectedTabBar: self.$selectedTabBar, tabView: .promotion, imageName: Image(systemName: "rectangle.split.3x3.fill"), contentSize: 0.85),
                            TabBarItemView(selectedTabBar: self.$selectedTabBar, tabView: .contact, imageName: Image(systemName: "person.fill"), contentSize: 0.85)
                            
                            
                        ], contentResize: 1)
                    }
                    .frame(height:mainGeo.size.height * 0.1)
                    
                    
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
