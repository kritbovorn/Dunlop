//
//  ContentView.swift
//  Dunlop
//
//  Created by Kritbovorn on 22/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//
//https://www.raywenderlich.com/7589178-how-to-create-a-neumorphic-design-with-swiftui

import SwiftUI

struct ContentView: View {
    
    @State var selectedTabBar = TabView.home
    
    var body: some View {
        
            
        GeometryReader { mainGeo in
            
            ZStack {
                
                Color(red: 255/255, green: 212/255, blue: 0/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    
                    GeometryReader { firstGeo in
                        
                        if self.selectedTabBar == .home {
                            
                            HomeView(selectedTabBar: TabView.home)
                        }
                        else if self.selectedTabBar == .product {
                            
                            ProductTyreView(selectedTabBar: TabView.product)
                        }
                        else {
                            
                            ContactView(selectedTabBar: TabView.contact)
                        }
                    }
                    .frame(height: mainGeo.size.height * 0.9)
                    
                    GeometryReader { secondGeo in
                        
                        TabBarRowView(selectedTabBar: self.$selectedTabBar, tabBarItems: [
                            TabBarItemView(selectedTabBar: self.$selectedTabBar, tabView: .home, imageName: Image(systemName: "tray.full.fill"), contentSize: 0.8),
                            
                            TabBarItemView(selectedTabBar: self.$selectedTabBar, tabView: .product, imageName: Image(systemName: "rectangle.split.3x3.fill"), contentSize: 0.8),
                            TabBarItemView(selectedTabBar: self.$selectedTabBar, tabView: .contact, imageName: Image(systemName: "person.fill"), contentSize: 0.8)
                            
                            
                        ], contentResize: 1)
                    }
                    .frame(height: mainGeo.size.height * 0.1)
                    
                }
            }
        }
        
        
        
    }
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
