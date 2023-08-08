//
//  LocationTests.swift
//  LocationTests
//
//  Created by Kaan Uzman on 8/8/23.
//

import XCTest
import CoreLocation

final class LocationTests: XCTestCase {
    var locationViewModel: LocationViewModel!
    
    override func setUpWithError() throws {
        locationViewModel = LocationViewModel()
    }
    
    override func tearDownWithError() throws {
        locationViewModel = nil
    }
    
    /// Unit test scenario that tests whether the location is correctly retrieved from the device
    func test_getCurrentLocation_returnsExpectedLocation() {
        // Arrange
        let locationManager = CLLocationManagerMock()
        locationViewModel.manager = locationManager
        
        // Act
        locationViewModel.requestLocation()
        
        // Assert
        XCTAssertTrue(locationManager.requestLocationCalled, "requestLocation should be called after requestLocation()")
        
        // Simulate location update
        let simulatorLocation = CLLocation(latitude: 39.42417, longitude: 29.98333) // Kutahya latitude and longitude values saved on my simulator
        locationViewModel.locationManager(locationManager, didUpdateLocations: [simulatorLocation])
        
        // Assert updated state
        XCTAssertNotNil(locationViewModel.location, "location should not be nil after location update")
        XCTAssertFalse(locationViewModel.isLoading, "isLoading should be false after location update")
    }
}

/// Mock class for CLLocationManager
class CLLocationManagerMock: CLLocationManager {
    var requestLocationCalled = false
    
    override func requestLocation() {
        requestLocationCalled = true
    }
}
