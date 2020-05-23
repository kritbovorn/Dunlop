//
//  Example.swift
//  Dunlop
//
//  Created by Kritbovorn on 22/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct Example: View {
    
    @State var isHide = false
    @State var isShow = false
    
    var body: some View {
        
        
        ZStack {
            
            Color(red: 249/255, green: 249/255, blue: 88/255)
                .edgesIgnoringSafeArea(.all)
            
            GeometryReader { mainGeo in
                
                if self.isShow {
                    
                    Content1View(isShow: self.$isShow)
                }
                else{
                    
                    Content2View(isShow: self.$isShow)
                }
            }
        }
        
    }
}

struct Example_Previews: PreviewProvider {
    static var previews: some View {
        Example()
    }
}
