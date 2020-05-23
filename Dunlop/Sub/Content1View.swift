//
//  Content1View.swift
//  Dunlop
//
//  Created by Kritbovorn on 23/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct Content1View: View {
    
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
                                .background(Color(red: 249/255, green: 249/255, blue: 88/255))
                                
                                
                                GeometryReader { aFirstGeo in
                                    
                                    Image( "present")
                                    .resizable()
                                    .scaledToFit()
                                }
                                .frame(width: self.isHide ? firstGeo.size.width * 0.33 : firstGeo.size.width )
                                .background(Color(red: 249/255, green: 249/255, blue: 88/255))
                                
                                
                                GeometryReader { aFirstGeo in
                                    
                                    Image( "history")
                                    .resizable()
                                    .scaledToFit()
                                }
                                .frame(width: self.isHide ? firstGeo.size.width * 0.33 : 0)
                                .background(Color(red: 249/255, green: 249/255, blue: 88/255))
                                
                            }
                            
                            
                        }
                        .frame(height: self.isHide ?  mainGeo.size.height * 0.1 :  mainGeo.size.height * 0.3)
                        .background(Color(red: 249/255, green: 249/255, blue: 88/255))
                        
                        
                        GeometryReader { secondGeo in
                            
                                    
                                    SubCardHeadView1(isHiddenA: self.$isHide, contentResize: 0.9, imageName: "comforttyre")
                                    
                            
                        }
                        .frame(height: self.isHide ? mainGeo.size.height * 0 : mainGeo.size.height * 0.3)
                        .background(Color(red: 249/255, green: 249/255, blue: 88/255))
                        
                        // MAIN
                        GeometryReader { realGeo in
                            
        //                    Text(self.isHide ? "Real" : "")
                            
                            if self.isHide {
                                
                                VStack {
                                    
                                    //SubCardHeadView1(isHiddenA: self.$isHide, contentResize: 0.9, imageName: "present")
                                    
                                    SubCardHeadView1(isHiddenA: .constant(false), contentResize: 0.9, imageName: "comforttyre")
                                    
                                    
                                }
                            }
                            
                            
                        }
                        .frame(height: self.isHide ?  mainGeo.size.height * 0.75 :  mainGeo.size.height * 0)
                        .background(Color(red: 249/255, green: 249/255, blue: 88/255))
                        
                        
                        GeometryReader { thirdGeo in
                            
                            HStack {
                                
                                SubCardHeadView1(isHiddenA: self.$isHide, contentResize: 0.9, imageName: "history")
                                
                                SubCardHeadView1(isHiddenA: self.$isHide, contentResize: 0.9, imageName: "history")
                                
                                SubCardHeadView1(isHiddenA: self.$isHide, contentResize: 0.9, imageName: "history")
                            }
                            
                            
                            
                            
                        }
                        .frame(height: self.isHide ? mainGeo.size.height * 0.05 : mainGeo.size.height * 0.3)
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

struct Content1View_Previews: PreviewProvider {
    static var previews: some View {
        Content1View(isShow: .constant(false))
    }
}
