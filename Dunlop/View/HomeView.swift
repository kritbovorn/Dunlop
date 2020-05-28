//
//  HomeView.swift
//  Dunlop
//
//  Created by Kritbovorn on 28/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    
    @State private var dragOffset = CGSize.zero
    @State private var isHideTabBar = false
    
    @State var selectedTabBar = TabView.home
    
    @State private var fillColor = Color(red: 255/255, green: 212/255, blue: 0/255)
    
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
                                
                        // FIXME: - ScrollView
                                ScrollView(.vertical, showsIndicators: true) {
                                    
                                    VStack {
                                        
                                        // TODO: - First Geometry
                                        
                                        // FIXME: - FIRST  Image Logo
                                        
                                        
                                // FIXME: - Category Text 1
                                        
                                        GeometryReader { categoryOne in
                                            
                                            CategoryTextView(title: "Passenger Car", contentsize: 1, fontSize: 24)
                                                .padding(.leading, 24)
                                            
                                        }
                                        .frame(height: mainGeo.size.height * 0.1)
                                        
                                        
                                        // TODO: - Category 1
                                        GeometryReader { firstGeo in
                                            
                                            Category1View(fillColor: self.fillColor)
                                            
                                        }
                                        .frame(height: mainGeo.size.height * 0.5)
                                        
                                        
                        // FIXME: - Category Text 2
                                
                                        GeometryReader { categoryOne in
                                            
                                            CategoryTextView(title: "Van/Pick up", contentsize: 1, fontSize: 24)
                                            .padding(.leading, 24)
                                            
                                        }
                                        .frame(height: mainGeo.size.height * 0.1)
                                        
                                        
                                        // TODO: - Category 2
                                        GeometryReader { firstGeo in
                                            
                                            Category2View(fillColor: self.fillColor)
                                            
                                        }
                                        .frame(height: mainGeo.size.height * 0.5)
                                        
                                        
                            // FIXME: - Category Text 3
                                        
                                                GeometryReader { categoryOne in
                                                    
                                                   CategoryTextView(title: "4x4/SUV", contentsize: 1, fontSize: 24)
                                                    .padding(.leading, 24)
                                                    
                                                }
                                                .frame(height: mainGeo.size.height * 0.1)
                                        
                                        // TODO: - Category 3
                                        GeometryReader { firstGeo in
                                            
                                            Category3View(fillColor: self.fillColor)
                                            
                                        }
                                        .frame(height: mainGeo.size.height * 0.5)
                                        
                                        
                            // FIXME: - Category Text 4
                                        
                                                GeometryReader { categoryOne in
                                                    
                                                    CategoryTextView(title: "OEM", contentsize: 1, fontSize: 24)
                                                    .padding(.leading, 24)
                                                    
                                                }
                                                .frame(height: mainGeo.size.height * 0.1)
                                        
                                        
                                        // TODO: - Category 4
                                        GeometryReader { firstGeo in
                                            
                                            Category4View(fillColor: self.fillColor)
                                            
                                        }
                                        .frame(height: mainGeo.size.height * 0.5)

                                    }
                                }
                        // ScrollView Finish
                        .gesture(
                            DragGesture()
                                .onChanged({ (value) in
                                    
                                    if value.translation.height < 10 {
                                        
                                        withAnimation {
                                            self.isHideTabBar = true
                                            
                                        }
                                        
                                    }
                                    if value.translation.height > 10 {
                                        
                                        withAnimation {
                                            
                                            self.isHideTabBar = false
                                        }
                                    }
                                })
                        )
                        
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
                    .frame(height: self.isHideTabBar ? 0 : mainGeo.size.height * 0.1)
                    
                    
                }   // Finish  Main VStack
            }   // Finish Geometry
        }
        
        // MARK: -  Finish  ZStack
        
        
    }
    
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
