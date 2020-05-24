//
//  Category1View.swift
//  Dunlop
//
//  Created by Kritbovorn on 24/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct Category1View: View {
    var body: some View {
        
        
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
}

struct Category1View_Previews: PreviewProvider {
    static var previews: some View {
        Category1View()
    }
}
