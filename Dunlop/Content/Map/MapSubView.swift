//
//  MapSubView.swift
//  Dunlop
//
//  Created by Kritbovorn on 31/5/2563 BE.
//  Copyright © 2563 Kritbovorn. All rights reserved.
//

import SwiftUI
import MapKit

struct MapSubView: UIViewRepresentable {
    
    let map = MKMapView()
    let point = MKPointAnnotation()
    
    func makeUIView(context: Context) -> MKMapView {
        
        let center = CLLocationCoordinate2D(latitude: 13.691329, longitude: 100.464192)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 1000, longitudinalMeters: 1000)
        
        point.title = "บริษัท สิทธิชัยยางยนต์ จำกัด"
        point.subtitle = "14/197-198 ซ.จอมทอง 19 ถ.จอมทอง เขตจอมทอง กรุงเทพมหานคร 10150"
        point.coordinate = center
        
        map.region = region
        map.addAnnotation(point)
        
        return map
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        print("Update")
    }
}

