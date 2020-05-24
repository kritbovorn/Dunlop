//
//  Category3View.swift
//  Dunlop
//
//  Created by Kritbovorn on 24/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct Category3View: View {
    
    var fillColor: Color
    
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 0) {
            
            
            
            ProductRowView(resizeContent: 0.9, items: [
                ProductView(resizeContent: 1, fillColor: self.fillColor, imageName: Image("maxx050plus"), title: "SP SPORT MAXX 050+"),
                ProductView(resizeContent: 1, fillColor: self.fillColor, imageName: Image("pt3"), title: "GRANDTREK PT3"),
                ProductView(resizeContent: 1, fillColor: self.fillColor, imageName: Image("at22"), title: "GRANDTREK AT-22"),
                ProductView(resizeContent: 1, fillColor: self.fillColor, imageName: Image("at3"), title: "GRANDTREK AT-3"),
                ProductView(resizeContent: 1, fillColor: self.fillColor, imageName: Image("at1"), title: "GRANDTREK AT-1"),
                ProductView(resizeContent: 1, fillColor: self.fillColor, imageName: Image("at20"), title: "GRANDTREK AT-20"),
                ProductView(resizeContent: 1, fillColor: self.fillColor, imageName: Image("at5"), title: "GRANDTREK AT-5"),
                ProductView(resizeContent: 1, fillColor: self.fillColor, imageName: Image("mt2"), title: "GRANDTREK MT-2"),
                ProductView(resizeContent: 1, fillColor: self.fillColor, imageName: Image("tg28"), title: "GRANDTREK TG-28"),
                ProductView(resizeContent: 1, fillColor: self.fillColor, imageName: Image("tg30"), title: "GRANDTREK TG-30")
            ])
        }
        
        
    }
}

struct Category3View_Previews: PreviewProvider {
    static var previews: some View {
        Category3View(fillColor: Color(red: 255/255, green: 212/255, blue: 0/255))
    }
}
