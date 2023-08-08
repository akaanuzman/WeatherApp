//
//  CLLocationManagerMock.swift
//  LocationTests
//
//  Created by Kaan Uzman on 8/8/23.
//

import CoreLocation
import Foundation
/// Mock class for CLLocationManager
class CLLocationManagerMock: CLLocationManager {
    var requestLocationCalled = false

    override func requestLocation() {
        requestLocationCalled = true
    }
}
