//
//  HomeSubView.swift
//  Dunlop
//
//  Created by Kritbovorn on 28/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct HomeSubView: View {
    var body: some View {
        
        
        GeometryReader { mainGeo in
            
            ScrollView {
                VStack {
                    
                    Spacer()
                    
                    ForEach(1..<8) { index in
                        
                        Image("d\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(24)
                            .padding()
                        
                            .shadow(color: Color.lairDarkGray.opacity(0.2), radius: 2, x: -2, y: -2)
                            .shadow(color: Color.lairDarkGray.opacity(0.6), radius: 2, x: 2, y: 2)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct HomeSubView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSubView()
    }
}
