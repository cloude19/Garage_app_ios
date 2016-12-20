//
//  ViewController.swift
//  ODU_Garadge
//
//  Created by Troy Calvert on 12/7/16.
//  Copyright © 2016 Troy Calvert. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapView.delegate = self
        
        // Set the intial location
        let initialLocation = CLLocation(latitude: 36.886525, longitude: -76.306102)
        centerMapOnLocation(location: initialLocation)
        
        
        // show artwork on map
        let anno = Anno(name: "Some_Text",
                              locationName: "Waikiki Gateway Park",
                              discipline: "hghkgk",
                              coordinate: CLLocationCoordinate2D(latitude: 36.886525, longitude: -76.306102))
        
        mapView.addAnnotation(anno)
        }
    
/*    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
}

