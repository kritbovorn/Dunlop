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
        
        GeometryReader { mainGeo in
            
            ZStack {
                
                
                Color(red: 255/255, green: 222/255, blue: 0/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    
                    GeometryReader { geo in
                        
                        Image("dunlop-logo")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geo.size.width * 0.5)
                    }
                    .frame(height: mainGeo.size.height * 0.1)
                    
                    GeometryReader { firstGeo in
                        
                        ProductRowView(resizeContent: 0.9, items: [
                            ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("lm705"), title: "SP SPORT LM 705"),
                            ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("lm704"), title: "SP SPORT LM 704"),
                            ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT MAXX 050+"),
                            ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("ec300"), title: "ENASAVE EC 300"),
                            ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("ec300+"), title: "ENASAVE EC 300+"),
                            ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("touring"), title: "SP TOURING R1")
                        ])
                        
                    }
                    .frame(height: mainGeo.size.height * 0.4)
                    
                    
                    GeometryReader { secondGeo in
                        
                        EmptyView()
                    }
                    .frame(height: mainGeo.size.height * 0.5)
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
