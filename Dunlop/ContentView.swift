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
            
            VStack(spacing: 0) {
                
                if self.selectedTabBar == .home {
                    
                    HomeView()
                }
                else if self.selectedTabBar == .product {
                    
                    ProductTyreView()
                }
                else {
                    
                    ContactView()
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
