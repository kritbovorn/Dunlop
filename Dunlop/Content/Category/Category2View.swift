//
//  Category2View.swift
//  Dunlop
//
//  Created by Kritbovorn on 24/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct Category2View: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            
            
            ProductRowView(resizeContent: 0.9, items: [
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lt37"), title: "SP LT-37"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lt36"), title: "SP LT-36"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("v1"), title: "VANTREK V1"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("v1"), title: "VANTREK V1 PLUS")
            ])
        }
        
        
    }
}

struct Category2View_Previews: PreviewProvider {
    static var previews: some View {
        Category2View()
    }
}
