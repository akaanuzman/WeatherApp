//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 6/7/23.
//

import Foundation
import CoreLocation

class LocationViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    var manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading: Bool = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocation() {
        isLoading = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error getting location: ",error)
        isLoading = false
    }
}
