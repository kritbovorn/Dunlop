//
//  Content2View.swift
//  Dunlop
//
//  Created by Kritbovorn on 23/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct Content2View: View {
    
    @State var isHide = false
     @Binding var isShow: Bool
    
    var body: some View {
        
        
        GeometryReader { mainGeo in
                    
                    VStack(spacing: 0) {
                        
                        GeometryReader { firstGeo in
                            
                            HStack {
                                
                                
                                GeometryReader { aFirstGeo in
                                    
                                    Image( "present")
                                    .resizable()
                                    .scaledToFit()
                                }
                                .frame(width: self.isHide ? firstGeo.size.width * 0.33 : 0)
                                
                                
                                GeometryReader { aFirstGeo in
                                    
                                    Image( "present")
                                    .resizable()
                                    .scaledToFit()
                                }
                                .frame(width: self.isHide ? firstGeo.size.width * 0.33 : firstGeo.size.width )
                                
                                
                                GeometryReader { aFirstGeo in
                                    
                                    Image( "history")
                                    .resizable()
                                    .scaledToFit()
                                }
                                .frame(width: self.isHide ? firstGeo.size.width * 0.33 : 0)
                                
                            }
                            
                            
                        }

                            .frame(height: mainGeo.size.height * 0.9)
                        .background(Color(red: 249/255, green: 249/255, blue: 88/255))
                        
                        
                        
                        
                        
                        
                       
                        
                       
                       
                        
                        GeometryReader { fifthGeo in
                            
                            
                            HStack {
                                
                                Spacer()
                                
                                Button(action: {
                                    
                                    withAnimation {
                                        self.isHide.toggle()
                                    }
                                }, label: {
                                    
                                    Image(systemName: "doc.text.magnifyingglass")
                                })
                                
                                Spacer()
                                
                                Button(action: {
                                    
                                    withAnimation {
                                        self.isShow.toggle()
                                    }
                                }, label: {
                                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                })
                                
                                Spacer()
                                
                            }
                            
                        }
                        .frame(height: mainGeo.size.height * 0.1)
                        .background(Color.yellow)
                    }
                }
        
        
    }
}

struct Content2View_Previews: PreviewProvider {
    static var previews: some View {
        Content2View(isShow: .constant(true))
    }
}
