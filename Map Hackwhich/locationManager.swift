//
//  locationManager.swift
//  Map Hackwhich
//
//  Created by Student on 3/1/21.
//

import Foundation
import CoreLocation

class LocationManger: NSObject, CLLocationManagerDelegate, ObservableObject {
    var locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
