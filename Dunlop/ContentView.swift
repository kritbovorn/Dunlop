//
//  ContentView.swift
//  Dunlop
//
//  Created by Kritbovorn on 22/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            
            
            GeometryReader { mainGeo in
            
                ZStack {
                    
                    
                    Color.yellow
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 0) {
                        
                        GeometryReader { firstGeo in
                            
                            SubCardHeadView1(contentResize: 1, imageName: "history")
                            
                        }
                        .frame(height: mainGeo.size.height * 0.3)
                        
                        
                        GeometryReader { secondGeo in
                            
                            EmptyView()
                        }
                        .frame(height: mainGeo.size.height * 0.7)
                        .background(Color.yellow)
                        
                        
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
