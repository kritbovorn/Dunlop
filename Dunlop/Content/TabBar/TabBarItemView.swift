//
//  TabBarItemView.swift
//  Dunlop
//
//  Created by Kritbovorn on 24/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct TabBarItemView: View {
    
    @Binding var selectedTabBar: TabView
    let uuid = UUID()
    var tabView: TabView
    var imageName: Image
    
    var resizeContent: CGFloat
    
    var body: some View {
        
        GeometryReader { mainGeo in
            
            GeometryReader { geo in
                
                Button(action: {
                    
                    self.selectedTabBar = self.tabView
                }, label: {
                    
                    self.imageName
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                        .accentColor(self.selectedTabBar == self.tabView ? .blue : .gray)
                        .frame(width: geo.size.height, height: geo.size.height)
                })
            }
            .frame(height: mainGeo.size.height * self.resizeContent)
        }
    }
}

struct TabBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItemView(selectedTabBar: .constant(TabView.home), tabView: .home, imageName: Image(systemName: "pencil.tip"), resizeContent: 0.3)
    }
}
