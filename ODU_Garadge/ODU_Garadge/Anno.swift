//
//  Anno.swift
//  ODU_Garadge
//
//  Created by Troy Calvert on 12/7/16.
//  Copyright © 2016 Troy Calvert. All rights reserved.
//

import Foundation
import MapKit

class Anno: NSObject, MKAnnotation {
    let name: String
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(name: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.name = name
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    var subtitle: String? {
        return locationName
    }
}
