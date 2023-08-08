//
//  ApiTests.swift
//  ApiTests
//
//  Created by Kaan Uzman on 8/8/23.
//
import CoreLocation
import XCTest

final class ApiTests: XCTestCase {
    /// Unit test scenario that tests whether the location is correctly retrieved from the device
    func test_getCurrentLocation_withApiRequest() async throws {
        // Arrange
        let weatherViewModel = WeatherViewModel()
        let simulatorLocation = CLLocationCoordinate2D(latitude: 39.42417, longitude: 29.98333) // Kutahya latitude and longitude values saved on my simulator
        // Method call
        await weatherViewModel.assignCurrentWeather(location: simulatorLocation)
        
        // Assert
        XCTAssertNotNil(weatherViewModel.weather, "weather must not be nil")
    }
}
