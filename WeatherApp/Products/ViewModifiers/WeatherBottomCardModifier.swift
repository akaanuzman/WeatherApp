//
//  WeatherBottomCardModifier.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 9/7/23.
//

import Foundation
import SwiftUI

struct WeatherBottomCardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .padding(.bottom,20)
            .foregroundColor(Color.darkBlue)
            .background(.white)
            .cornerRadius(CornerRadiusConstants.low.rawValue, corners: [.topLeft,.topRight])
    }
}

