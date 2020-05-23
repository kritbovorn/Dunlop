//
//  ProductView.swift
//  Dunlop
//
//  Created by Kritbovorn on 23/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct ProductView: View {
    
    let uuid = UUID()
    var resizeContent: CGFloat
    var fillColor: Color
    var imageName: Image
    var title: String
    
    var body: some View {
        
        GeometryReader { mainGeo in
            
            VStack {
                
                GeometryReader { geo in
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: geo.size.width / 6)
                            .fill(self.fillColor)
                        
                        VStack(spacing: 0) {
                            
                            Spacer()
                            
                            self.imageName
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            Text(self.title)
                                .font(.system(size: 18, weight: .black))
                                .foregroundColor(.primary)
                            
                            
                            
                            Spacer()
                        }
                    }
                }
                .frame(height: mainGeo.size.height * self.resizeContent)
                .border(Color.gray, width: 1)
                .clipShape(RoundedRectangle(cornerRadius: mainGeo.size.width / 6))
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(resizeContent: 0.3, fillColor: Color(red: 255/255, green: 222/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT LM705")
    }
}
