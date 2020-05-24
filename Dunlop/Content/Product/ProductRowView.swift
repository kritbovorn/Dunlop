//
//  ProductRowView.swift
//  Dunlop
//
//  Created by Kritbovorn on 23/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct ProductRowView: View {
    
    var resizeContent: CGFloat
    var items: [ProductView]
    
    
    var body: some View {
        
        GeometryReader { mainGeo in
            
            VStack(spacing: 0) {
                
                GeometryReader { geo in
                    
                    // START
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            ForEach(self.items, id: \.uuid) { item in
                                
                                item
                                    .frame(width: mainGeo.size.width * 0.7, height: mainGeo.size.height * 0.9)
                                    .padding(.horizontal, 20)
                            }
                        }
                        
                        .padding(.vertical, mainGeo.size.height * 0.05) //  ให้มีระยะห่าง ของกรอบ ภาพ
                        
                        
                    }
                    
                    
                }
                .frame(height: mainGeo.size.height * self.resizeContent)
                
            }
        }
    }
}

struct ProductRowView_Previews: PreviewProvider {
    static var previews: some View {
        
        ProductRowView(resizeContent: 0.9, items: [
            ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("lm705"), title: "SP SPORT LM705"),
            ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("lm704"), title: "SP SPORT LM704"),
            ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT MAXX050+")
        ])
    }
}
