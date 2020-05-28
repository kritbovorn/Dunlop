//
//  UnSelectedButtonView.swift
//  Dunlop
//
//  Created by Kritbovorn on 28/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct UnSelectedButtonMaskView: View {
    
    var contentSize: CGFloat
    var image: Image
    
    var body: some View {
        
        GeometryReader { mainGeo in
            
            ZStack {
                
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: mainGeo.size.height * self.contentSize, height: mainGeo.size.height * self.contentSize)
                
                self.image
                .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: (mainGeo.size.height * self.contentSize) / 2, height: (mainGeo.size.height * self.contentSize) / 2)
            }
        }
    }
}

struct UnSelectedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        UnSelectedButtonMaskView(contentSize: <#T##CGFloat#>)
    }
}
