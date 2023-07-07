//
//  ModelData.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 7/7/23.
//

import Foundation

var previewWeather: WeatherModel = load("dummyWeatherData.json")
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("\(filename) not found.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename): \(error)")
    }

    do {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not decode \(filename): \(error)")
    }
}

