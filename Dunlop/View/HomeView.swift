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
                    .frame(height: mainGeo.size.height * 0.08)
                    
                    GeometryReader { oneGeo in
                                
                        EmptyView()
                        
                    }
                    .frame(minHeight: mainGeo.size.height * 0.82)

                    
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
