//
//  Example.swift
//  Dunlop
//
//  Created by Kritbovorn on 22/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct Example: View {
    
    @State var isHide = false
    @State var isShow = false
    
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
                            
                            Image( "present")
                            .resizable()
                            .scaledToFit()
                        }
                        .frame(width: self.isHide ? firstGeo.size.width * 0.33 : 0)
                        
                    }
                    
                    
                }
                .frame(height: self.isHide ?  mainGeo.size.height * 0.1 :  mainGeo.size.height * 0.3)
                .background(Color.blue)
                
                GeometryReader { secondGeo in
                    
                    
                    Text("Third")
                    
                }
                .frame(height: self.isHide ? mainGeo.size.height * 0.1 : mainGeo.size.height * 0.3)
                .background(Color.green)
                
                // MAIN
                GeometryReader { realGeo in
                                   
                    Text(self.isHide ? "Real" : "")
                               }
                               .frame(height: self.isHide ?  mainGeo.size.height * 0.65 :  mainGeo.size.height * 0)
                               .background(Color.orange)
                
                GeometryReader { thirdGeo in
                    
                    Picker(selection: self.$isHide, label: Text("Boie")) {
                        Text("Girl")
                        Text("Children")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    
                    
                }
                .frame(height: self.isHide ? mainGeo.size.height * 0.05 : mainGeo.size.height * 0.3)
                .background(Color.red)
                
               
               
                
                GeometryReader { fifthGeo in
                    
                    
                    Button(action: {
                        
                        withAnimation {
                            self.isHide.toggle()
                        }
                    }, label: {
                        Text("Button")
                    })
                }
                .frame(height: mainGeo.size.height * 0.1)
                .background(Color.yellow)
            }
        }
        
//        func proved() {
//
//            if isHide && isShow {
//
//
//            }
//        }
    }
}

struct Example_Previews: PreviewProvider {
    static var previews: some View {
        Example()
    }
}
