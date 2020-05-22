//
//  LayoutView.swift
//  Dunlop
//
//  Created by Kritbovorn on 22/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct LayoutView: View {
    var body: some View {
        
        
        GeometryReader { mainGeo in
            
            ZStack {
                
                Color(red: 249/255, green: 249/255, blue: 88/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    
                    GeometryReader { firstGeo in
                        
                        // เนื้อหา แรก
                        SubCardHeadView(contentResize: 1)
                        
                        
                    }
                    .frame(height: mainGeo.size.height * 0.3)
                    .background(Color(red: 249/255, green: 249/255, blue: 88/255))
                    
                    GeometryReader { secondGeo in
                        
                        EmptyView()
                    }
                    .frame(height: mainGeo.size.height * 0.7)
                }
            }
            
            
        }
        
        
    }
}

struct LayoutView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutView()
    }
}
