//
//  LocationTests.swift
//  LocationTests
//
//  Created by Kaan Uzman on 8/8/23.
//

import CoreLocation
import XCTest

final class LocationTests: XCTestCase {
    var locationViewModel: LocationViewModel!
    
    override func setUpWithError() throws {
        locationViewModel = LocationViewModel()
    }
    
    override func tearDownWithError() throws {
        locationViewModel = nil
    }
    
    /// Unit test scenario that tests whether the location is correctly retrieved from the device
    func test_requestLocationMethod_inLocationViewModelFile() {
        // Arrange
        let locationManager = CLLocationManagerMock()
        locationViewModel.manager = locationManager
        
        // Act
        locationViewModel.requestLocation()
        
        // Assert
        XCTAssertTrue(locationManager.requestLocationCalled, "requestLocation must be called after requestLocation()")
        
        // Simulate location update
        let simulatorLocation = CLLocation(latitude: 39.42417, longitude: 29.98333) // Kutahya latitude and longitude values saved on my simulator
        locationViewModel.locationManager(locationManager, didUpdateLocations: [simulatorLocation])
        
        // Assert updated state
        XCTAssertNotNil(locationViewModel.location, "location must not be nil after location update")
        XCTAssertFalse(locationViewModel.isLoading, "isLoading must be false after location update")
    }
}
