//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 7/7/23.
//

import CoreLocation
import Foundation

class WeatherViewModel: ObservableObject {
    var envFileManager = EnvFileManager()
    @Published var weather: WeatherModel?
    
    /// Get current phone coordinates and fetch weather data
    /// - Parameters:
    ///   - latitude: Current latitude
    ///   - longitude: Current longitude
    /// - Returns: Get current phone coordinates and it returns weather data
    private func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> WeatherModel {
        let apiKey: String = envFileManager.apiKey
        guard let url = URL(string: "\(PathConstants.apiBaseUrl.rawValue)/weather?lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)&units=metric") else {
            fatalError("Missing URL")
        }
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fetching weather data") }
        
        let decodedData = try JSONDecoder().decode(WeatherModel.self, from: data)
        
        return decodedData
    }
    
    func assignCurrentWeather(location: CLLocationCoordinate2D) async {
        do {
            weather = try await getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
        } catch {
            print("Error getting weather: \(error)")
        }
    }
}
