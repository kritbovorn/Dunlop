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
    
    var contentSize: CGFloat
    
    func isSelected() -> Bool {
        
        return selectedTabBar == tabView
    }
    
    var buttonUp: some View {
        
        UnSelectButtonView(contentSize: self.contentSize, image: imageName)
    }
    
    var buttonDown: some View {
        
        SelectedButtonView(contentSize: self.contentSize, image: self.imageName)
    }
    
    var body: some View {
        
        GeometryReader { mainGeo in
            
            GeometryReader { geo in
                
                Button(action: {
                    
                    self.selectedTabBar = self.tabView
                }, label: {
                    
                    if self.isSelected() {
                        
                        self.buttonDown
                    }
                    else{
                        
                        self.buttonUp
                    }
                })
            }
            .frame(height: mainGeo.size.height * self.contentSize)
        }
    }
}

struct TabBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItemView(selectedTabBar: .constant(TabView.home), tabView: .home, imageName: Image(systemName: "pencil.tip"), contentSize: 0.3)
    }
}
