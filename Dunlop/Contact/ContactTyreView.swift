//
//  ContactTyreView.swift
//  Dunlop
//
//  Created by Kritbovorn on 29/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI

struct ContactTyreView: View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    
    var body: some View {
        
        
        GeometryReader { mainGeo in
            
            Form {
                Section(header: Text("Contact Us")) {
                    
                    HStack {
                        Spacer()
                        
                        Text("บริษัท สิทธิชัยยางยนต์ จำกัด")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.lairDarkGray)
                            .frame(maxWidth:.infinity)
                            .padding()
                            .padding(.horizontal, 20)
                            .background(LinearGradient.lairVerticalLightToDark)
                            .cornerRadius(20)
                        
                            .shadow(color: Color.white.opacity(0.9), radius: 2, x: -2, y: -2)
                            .shadow(color: Color.lairShadowGray, radius: 2, x: 2, y: 2)
                        
                        Spacer()
                    }
                    Text("14/197-8 ")
                        .foregroundColor(.lairDarkGray)
                        .padding()
                        .background(LinearGradient.lairVerticalLightToDark)
                    
                        .shadow(color: Color.white.opacity(0.9), radius: 1.5, x: -1.5, y: -1.5)
                        .shadow(color: Color.lairShadowGray, radius: 1.5, x: 1.5, y: 1.5)
                    
                    
                    Text("Mobile phone: 09-575-38318")
                        .foregroundColor(.lairDarkGray)
                        .padding()
                        .background(LinearGradient.lairVerticalLightToDark)
                        
                        .shadow(color: Color.white.opacity(0.9), radius: 1.5, x: -1.5, y: -1.5)
                        .shadow(color: Color.lairShadowGray, radius: 1.5, x: 1.5, y: 1.5)
                    
                    
                    Text("Email: ktaweeyossak@yahoo.com")
                        .foregroundColor(.lairDarkGray)
                        .padding()
                        .background(LinearGradient.lairVerticalLightToDark)
                        
                        .shadow(color: Color.white.opacity(0.9), radius: 1.5, x: -1.5, y: -1.5)
                        .shadow(color: Color.lairShadowGray, radius: 1.5, x: 1.5, y: 1.5)
                    
                    
                }
                
                
                Section(header: Text("Social")) {
                    
                    Text("Website:  https://tyre.co.th")
                    .foregroundColor(.lairDarkGray)
                    .padding()
                    .background(LinearGradient.lairVerticalLightToDark)
                    
                    .shadow(color: Color.white.opacity(0.9), radius: 1.5, x: -1.5, y: -1.5)
                    .shadow(color: Color.lairShadowGray, radius: 1.5, x: 1.5, y: 1.5)
                    
                    Text("Line:  @tyre")
                        .foregroundColor(.lairDarkGray)
                        .padding()
                        .background(LinearGradient.lairVerticalLightToDark)
                        
                        .shadow(color: Color.white.opacity(0.9), radius: 1.5, x: -1.5, y: -1.5)
                        .shadow(color: Color.lairShadowGray, radius: 1.5, x: 1.5, y: 1.5)
                    
                    Text("Facebook: tyre8")
                        .foregroundColor(.lairDarkGray)
                        .padding()
                        .background(LinearGradient.lairVerticalLightToDark)
                        
                        .shadow(color: Color.white.opacity(0.9), radius: 2, x: -2, y: -2)
                        .shadow(color: Color.lairShadowGray, radius: 2, x: 2, y: 2)
                }
            }
        }
    }
}

struct ContactTyreView_Previews: PreviewProvider {
    static var previews: some View {
        ContactTyreView()
    }
}
