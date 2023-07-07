//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 7/7/23.
//

import Foundation
struct WeatherModel: Decodable {
    var coord: CoordinatesResponse
    var weather: [WeatherResponse]
    var main: MainResponse
    var name: String
    var wind: WindResponse
    
    struct CoordinatesResponse: Decodable {
        var lon: Double
        var lat: Double
    }
    
    struct WeatherResponse: Decodable {
        var id: Int
        var main: String
        var description: String
        var icon: String
    }
    
    struct MainResponse: Decodable {
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Int
        var humidity: Int
    }
    
    struct WindResponse: Decodable {
        var speed: Double
        var deg: Int
    }
}
