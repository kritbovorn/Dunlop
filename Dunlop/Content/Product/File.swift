//
//  File.swift
//  Dunlop
//
//  Created by Kritbovorn on 24/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import Foundation



//ZStack {
//    
//    
//    Color(red: 255/255, green: 222/255, blue: 0/255)
//        .edgesIgnoringSafeArea(.all)
//    
//    VStack(spacing: 0) {
//        
//        // FIXME: - FIRST
//        GeometryReader { geo in
//                
//                Image("dunlop-logo")
//                .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: geo.size.width * 0.5)
//            
//        }
//        .frame(height: mainGeo.size.height * 0.1)
//        
//        // FIXME: - SECOND
//        GeometryReader { firstGeo in
//            
//            VStack(alignment: .leading, spacing: 0) {
//                
//                Text("Passenger Car")
//                    .font(.system(size: 14))
//                    .fontWeight(.bold)
//                    .padding(.leading, 20)
//                
//                ProductRowView(resizeContent: 0.9, items: [
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm705"), title: "SP SPORT LM 705"),
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm704"), title: "SP SPORT LM 704"),
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT MAXX 050+"),
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300"), title: "ENASAVE EC 300"),
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300+"), title: "ENASAVE EC 300+"),
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("touring"), title: "SP TOURING R1")
//                ])
//            }
//            
//        }
//        .frame(height: mainGeo.size.height * 0.4)
//        
//        
//        // FIXME: - SECOND
//        GeometryReader { firstGeo in
//            
//            VStack(alignment: .leading, spacing: 0) {
//                
//                Text("Van / Pick up")
//                    .font(.system(size: 14))
//                    .fontWeight(.bold)
//                    .padding(.leading, 20)
//                
//                ProductRowView(resizeContent: 0.9, items: [
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm705"), title: "SP SPORT LM 705"),
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lm704"), title: "SP SPORT LM 704"),
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT MAXX 050+"),
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300"), title: "ENASAVE EC 300"),
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300+"), title: "ENASAVE EC 300+"),
//                    ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("touring"), title: "SP TOURING R1")
//                ])
//            }
//            
//        }
//        .frame(height: mainGeo.size.height * 0.4)
//        
//        
//        
//        
//        
//        
//        
//        GeometryReader { secondGeo in
//            
//            EmptyView()
//        }
//        .frame(height: mainGeo.size.height * 0.1)
//        
//    }
//    
//}
