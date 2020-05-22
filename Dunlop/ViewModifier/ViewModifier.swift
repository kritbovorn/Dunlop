//
//  ViewModifier.swift
//  Dunlop
//
//  Created by Kritbovorn on 22/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

// MARK: - TabBarModifier
struct TabBarModifier: ViewModifier {
    
    let image: Image
    let itemName: String
    
    func body(content: Content) -> some View {
        content
            .tabItem({
                image
                Text(itemName)
            })
    }
}

// MARK: - View Neumorphic

// FIXME: Rectangle()
struct NeumorphicRoundRectangleModifier: ViewModifier {
    
    var color: Color
    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(color)
                    .shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 2)
                    .shadow(color: Color.white.opacity(0.4), radius: 2, x: -2, y: -2)
        )
    }
}


struct NeumorphicRoundRectangleSelectedModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: 12)
                    
                    .stroke(Color.white.opacity(0.4), lineWidth: 2)
                    .shadow(color: Color.black.opacity(0.9), radius: 4, x: 4, y: 4)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(color: Color.white.opacity(0.7), radius: 4, x: -8, y: -8)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
        )
    }
}

// FIXME: Circle()

struct NeumorphicCircleModifier: ViewModifier {
    
    var color: Color
    func body(content: Content) -> some View {
        content
            .background(
                Circle()
                    .fill(color)
                    .shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 2)
                    .shadow(color: Color.white.opacity(0.4), radius: 2, x: -2, y: -2)
        )
    }
}


struct NeumorphicCircleSelectedModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .background(
                
                Circle()
                    .stroke(Color.white.opacity(0.4), lineWidth: 2)
                    .shadow(color: Color.black.opacity(0.9), radius: 4, x: 4, y: 4)
                    .clipShape(Circle())
                    .shadow(color: Color.white.opacity(0.7), radius: 4, x: -8, y: -8)
                    .clipShape(Circle())
        )
    }
}

// MARK: - LayoutSimpleNeumorphicView

    // FIXME: - กำหนดให้  width == height

struct LightLayoutShapeHeightNeumorphicViewModifier: ViewModifier {
    
    
    var resize: CGFloat
    
    func body(content: Content) -> some View {
        
        GeometryReader { geo in
            
            content
                .frame(width: geo.size.height * self.resize, height: geo.size.height * self.resize)
                .shadow(color: Color.black.opacity(0.15), radius: (geo.size.width * self.resize) * 0.1, x: (geo.size.width * self.resize) * 0.1, y: (geo.size.width * self.resize) * 0.1)
                .shadow(color: Color.white.opacity(0.7), radius: (geo.size.width * self.resize) * 0.1, x: -(geo.size.width * self.resize) * 0.1, y: -(geo.size.width * self.resize) * 0.1)
        }
        
        
    }
}

    // FIXME: - กำหนดให้  อิสระ ทั้ง width ,  height

struct LightLayoutShapeWidthHeightNeumorphicViewModifier: ViewModifier {
    
    
    var resize: CGFloat
    
    func body(content: Content) -> some View {
        
        GeometryReader { geo in
            
            content
                .frame(width: geo.size.width * self.resize, height: geo.size.height * self.resize)
                .shadow(color: Color.black.opacity(0.15), radius: (geo.size.width * self.resize) * 0.1, x: (geo.size.width * self.resize) * 0.1, y: (geo.size.width * self.resize) * 0.1)
                .shadow(color: Color.black.opacity(0.15), radius: (geo.size.width * self.resize) * 0.05, x: -(geo.size.width * self.resize) * 0.05, y: -(geo.size.width * self.resize) * 0.05)
        }
        
        
    }
}

struct LightLayoutInverseShapeWidthHeightNeumorphicViewModifier: ViewModifier {
    
    
    var resize: CGFloat
    
    func body(content: Content) -> some View {
        
        GeometryReader { geo in
            
            content
                .frame(width: geo.size.width * self.resize, height: geo.size.height * self.resize)
                .shadow(color: Color.black.opacity(0.15), radius: (geo.size.width * self.resize) * 0.02, x: -(geo.size.width * self.resize) * 0.02, y: -(geo.size.width * self.resize) * 0.02)
                .shadow(color: Color.black.opacity(0.15), radius: (geo.size.width * self.resize) * 0.02, x: (geo.size.width * self.resize) * 0.02, y: (geo.size.width * self.resize) * 0.02)
        }
        
        
    }
}
