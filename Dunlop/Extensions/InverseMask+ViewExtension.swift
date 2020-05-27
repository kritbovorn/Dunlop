//
//  InverseMask+ViewExtension.swift
//  Dunlop
//
//  Created by Kritbovorn on 28/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

extension View {
    
    func inverseMase<Mask>(_ mask: Mask) -> some View where Mask: View {
        
        self.mask(
            mask
                .foregroundColor(.black)
                .background(Color.white)
                .compositingGroup()
                .luminanceToAlpha()
        )
    }
}
