//
//  ColorSchemeAndBgColorModifier.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 8/7/23.
//

import Foundation
import SwiftUI

struct ColorScehemeAndBgColorModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.darkBlue)
            .preferredColorScheme(.dark)
    }
}
