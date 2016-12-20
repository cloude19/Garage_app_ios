//
//   VCMapView.swift
//  ODU_Garadge
//
//  Created by Troy Calvert on 12/7/16.
//  Copyright © 2016 Troy Calvert. All rights reserved.
//

import Foundation
import MapKit

extension ViewController: MKMapViewDelegate {
    
    // 1
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        if let annotation = annotation as? Anno {
            
            let identifier = "pin"
            var view: MKAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView { //2
                dequeuedView.annotation = annotation
                view = dequeuedView
                
            }
            else {
                //3
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                let button = UIButton(type: UIButtonType.detailDisclosure)
                view.rightCalloutAccessoryView = button as UIView
            }
            return view
            
        }
        return nil
 }
}
