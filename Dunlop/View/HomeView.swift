//
//  HomeView.swift
//  Dunlop
//
//  Created by Kritbovorn on 23/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        // FIXME: - MAIN
        GeometryReader { mainGeo in
            
                
                ZStack {
                    
                    
                    Color(red: 255/255, green: 222/255, blue: 0/255)
                        .edgesIgnoringSafeArea(.all)
                    
                    ScrollView(.vertical, showsIndicators: true) {
                        
                        
                        VStack {
                            
                            // TODO: - First Geometry
                            
                            // FIXME: - FIRST  Image Logo
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
                            
                    // FIXME: - Category Text 1
                            
                            GeometryReader { categoryOne in
                                
                                
                                CategoryTextView(title: "Passenger Car", contentsize: 1, fontSize: 18)
                                    .padding(.leading, 24)
                                
                                
                            }
                            .frame(height: mainGeo.size.height * 0.1)
                            
                            
                            // TODO: - Product 1
                            GeometryReader { firstGeo in
                                
                                VStack(alignment: .leading, spacing: 0) {
                                    
                                    
                                    
                                    ProductRowView(resizeContent: 0.9, items: [
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm705"), title: "SP SPORT LM 705"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm704"), title: "SP SPORT LM 704"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT MAXX 050+"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300"), title: "ENASAVE EC 300"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300+"), title: "ENASAVE EC 300+"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("touring"), title: "SP TOURING R1")
                                    ])
                                }
                                
                            }
                            .frame(height: mainGeo.size.height * 0.4)
                            
                            
            // FIXME: - Category Text 2
                    
                            GeometryReader { categoryOne in
                                
                                CategoryTextView(title: "Van/Pick up", contentsize: 1, fontSize: 18)
                                .padding(.leading, 24)
                                
                            }
                            .frame(height: mainGeo.size.height * 0.1)
                            
                            
                            // TODO: - Product 2
                            GeometryReader { firstGeo in
                                
                                VStack(alignment: .leading, spacing: 0) {
                                    
                                    
                                    
                                    ProductRowView(resizeContent: 0.9, items: [
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm705"), title: "SP SPORT LM 705"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm704"), title: "SP SPORT LM 704"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT MAXX 050+"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300"), title: "ENASAVE EC 300"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300+"), title: "ENASAVE EC 300+"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("touring"), title: "SP TOURING R1")
                                    ])
                                }
                                
                            }
                            .frame(height: mainGeo.size.height * 0.4)
                            
                            
                // FIXME: - Category Text 3
                            
                                    GeometryReader { categoryOne in
                                        
                                       CategoryTextView(title: "4x4/SUV", contentsize: 1, fontSize: 18)
                                        .padding(.leading, 24)
                                        
                                    }
                                    .frame(height: mainGeo.size.height * 0.1)
                            
                            // TODO: - Product 3
                            GeometryReader { firstGeo in
                                
                                VStack(alignment: .leading, spacing: 0) {
                                    
                                    
                                    
                                    ProductRowView(resizeContent: 0.9, items: [
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm705"), title: "SP SPORT LM 705"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm704"), title: "SP SPORT LM 704"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT MAXX 050+"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300"), title: "ENASAVE EC 300"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300+"), title: "ENASAVE EC 300+"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("touring"), title: "SP TOURING R1")
                                    ])
                                }
                                
                            }
                            .frame(height: mainGeo.size.height * 0.4)
                            
                            
                // FIXME: - Category Text 4
                            
                                    GeometryReader { categoryOne in
                                        
                                        CategoryTextView(title: "OEM", contentsize: 1, fontSize: 18)
                                        .padding(.leading, 24)
                                        
                                    }
                                    .frame(height: mainGeo.size.height * 0.1)
                            
                            
                            
                            
                            // TODO: - Product 4
                            GeometryReader { firstGeo in
                                
                                VStack(alignment: .leading, spacing: 0) {
                                    
                                    
                                    
                                    ProductRowView(resizeContent: 0.9, items: [
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm705"), title: "SP SPORT LM 705"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm704"), title: "SP SPORT LM 704"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT MAXX 050+"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300"), title: "ENASAVE EC 300"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300+"), title: "ENASAVE EC 300+"),
                                        ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("touring"), title: "SP TOURING R1")
                                    ])
                                }
                                
                            }
                            .frame(height: mainGeo.size.height * 0.4)
                            
                            
                            
                            
                            GeometryReader { secondGeo in
                                
                                EmptyView()
                            }
                            .frame(height: mainGeo.size.height * 0.1)
                            
                        }
                        
                        
                    }
                    
                    
                    
                    
                    
                }
                
                
            
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
