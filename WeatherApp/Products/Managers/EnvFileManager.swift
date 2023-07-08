//
//  EnvFileManager.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 7/7/23.
//

import Foundation

class EnvFileManager {
    var apiKey: String = ""
    func loadApiKeyFromEnvFile() {
        guard let filePath = Bundle.main.path(forResource: ".env", ofType: nil) else {
            fatalError(".env file not found.")
        }

        do {
            let contents = try String(contentsOfFile: filePath, encoding: .utf8)
            let lines = contents.components(separatedBy: .newlines)

            for line in lines {
                let components = line.components(separatedBy: "=")
                guard components.count >= 2 else {
                    continue
                }

                let key = components[0].trimmingCharacters(in: .whitespacesAndNewlines)
                let value = components[1].trimmingCharacters(in: .whitespacesAndNewlines)

                // Use the key-value pair as needed
                print("\(key): \(value)")
                apiKey = value
                print(apiKey)
            }
        } catch {
            fatalError("Error reading .env file: \(error)")
        }
    }

    init() {
        loadApiKeyFromEnvFile()
    }
}
