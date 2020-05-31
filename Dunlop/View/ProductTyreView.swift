//
//  ProductTyreView.swift
//  Dunlop
//
//  Created by Kritbovorn on 28/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct ProductTyreView: View {
    
    @State private var dragOffset = CGSize.zero
    
    @State var selectedTabBar = TabView.product
    
    @State private var fillColor = Color(red: 255/255, green: 212/255, blue: 0/255).opacity(0.6)
    //@State private var fillColor = Color.lairDarkGray
    
    var body: some View {
        
        
        ZStack {
            
            Color(red: 255/255, green: 212/255, blue: 0/255)
            .opacity(0.2)
            .edgesIgnoringSafeArea(.all)
            
            // FIXME: - MAIN
            GeometryReader { mainGeo in
                
                
                VStack(spacing: 0) {
                    // FIXME: Image Logo
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
                        
                        // FIXME: - ScrollView
                        ScrollView(.vertical, showsIndicators: true) {
                            
                            VStack {
                                
                                
                                
                                
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
                            
                        
                    }
                    .frame(minHeight: mainGeo.size.height * 0.82)
                .background(Color(red: 255/255, green: 212/255, blue: 0/255).opacity(0.6))
//                    .background(Color.white)
                    
                    // FIXME: - Background Color of Content
                    
                    
                    
                    
                    
                }   // Finish  Main VStack
            }   // Finish Geometry
        }
        
        // MARK: -  Finish  ZStack
        
        
    }
    
}

struct ProductTyreView_Previews: PreviewProvider {
    static var previews: some View {
        ProductTyreView()
    }
}
