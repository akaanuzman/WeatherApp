//
//  TitleBoldModifier.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 9/7/23.
//

import Foundation
import SwiftUI

struct TitleBoldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
            .font(.title)
    }
}
