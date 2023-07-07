//
//  Extension+RoundedDouble.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 7/7/23.
//

import Foundation

extension Double {
    func roundedDouble() -> String {
        return String(format: "%.0f", self)
    }
}
