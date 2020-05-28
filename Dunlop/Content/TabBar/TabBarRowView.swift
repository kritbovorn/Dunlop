//
//  TabBarRowView.swift
//  Dunlop
//
//  Created by Kritbovorn on 24/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct TabBarRowView: View {
    
    @Binding var selectedTabBar: TabView
    var tabBarItems: [TabBarItemView]
    
    var contentResize: CGFloat
    
    var body: some View {
        
        GeometryReader { mainGeo in
            
            VStack(spacing: 0) {
                
                GeometryReader { geo in
                    
                    HStack {
                        
                        ForEach(self.tabBarItems, id: \.uuid) { item in
                            
                            HStack {
                                
                                Spacer()
                                
                                item
                                
                                Spacer()
                            }
                        }
                    }
                }
            }
            .frame(height: mainGeo.size.height * self.contentResize)
        }
        
    }
}

struct TabBarRowView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarRowView(selectedTabBar: .constant(.home), tabBarItems: [
            TabBarItemView(selectedTabBar: .constant(.home), tabView: .home, imageName: Image(systemName: "pencil.tip"), contentSize: 0.5),
            TabBarItemView(selectedTabBar: .constant(.home), tabView: .product, imageName: Image(systemName: "video.circle"), contentSize: 0.5),
            TabBarItemView(selectedTabBar: .constant(.home), tabView: .home, imageName: Image(systemName: "pencil.tip"), contentSize: 0.5),
            TabBarItemView(selectedTabBar: .constant(.home), tabView: .contact, imageName: Image(systemName: "video.circle"), contentSize: 0.5),
            
            
            
            
        ], contentResize: 0.1)
    }
}
