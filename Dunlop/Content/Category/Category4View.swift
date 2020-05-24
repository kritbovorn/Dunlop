//
//  Category4View.swift
//  Dunlop
//
//  Created by Kritbovorn on 24/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct Category4View: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 0) {
            
            
            ProductRowView(resizeContent: 0.9, items: [
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("sp10"), title: "SP 10"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300"), title: "ENASAVE EC-300"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("ec300+"), title: "ENASAVE EC-300+"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("at20"), title: "GRANDTREK AT-20"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("at25"), title: "GRANDTREK AT-25"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("pt3"), title: "GRANDTREK PT-3"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("st30"), title: "GRANDTREK ST-30"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("lt37"), title: "SP LT-37"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("sport01"), title: "SP SPORT 01"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("sport2030"), title: "SP SPORT 2030"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("sport230"), title: "SP SPORT 230"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("sport270"), title: "SP SPORT 270"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("d80v4"), title: "SP SPORT D80V4"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("maxxa1"), title: "SP SPORT MAXX A1"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("maxxtt"), title: "SP SPORT MAXX TT"),
                ProductView(resizeContent: 1, fillColor: Color(red: 255/255, green: 212/255, blue: 0/255), imageName: Image("Maxx050"), title: "SP SPORT MAXX 050"),
            ])
        }
        
        
    }
}

struct Category4View_Previews: PreviewProvider {
    static var previews: some View {
        Category4View()
    }
}
