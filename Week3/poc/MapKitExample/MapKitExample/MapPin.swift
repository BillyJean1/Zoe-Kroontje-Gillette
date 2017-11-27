//
//  MapPin.swift
//  MapKitExample
//
//  Created by mac on 27-11-17.
//  Copyright © 2017 Personal. All rights reserved.
//

import MapKit

class MapPin: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title:String, subtitle: String, coordinate: CLLocationCoordinate2D){
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}
