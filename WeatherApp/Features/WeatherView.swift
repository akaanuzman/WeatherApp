//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 7/7/23.
//

import SwiftUI

struct WeatherView: View {
    var weather: WeatherModel
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
