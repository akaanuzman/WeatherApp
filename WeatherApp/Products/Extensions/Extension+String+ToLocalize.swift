//
//  Extension+String+ToLocalize.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 9/7/23.
//

import Foundation
import SwiftUI

extension String {
    /// It localize any string from Localizable.string
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
