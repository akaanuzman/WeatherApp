//
//  ContentView.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 6/6/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationViewModel = LocationViewModel()
    @StateObject var weatherViewModel = WeatherViewModel()

    var body: some View {
        VStack {
            if let location = locationViewModel.location {
                if let weather = weatherViewModel.weather {
                    WeatherView(weather: weather)
                } else {
                    LoadingView().task {
                        await weatherViewModel.assignCurrentWeather(location: location)
                    }
                }
            } else {
                if locationViewModel.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationViewModel)
                }
            }
        }
        .modifier(ColorScehemeAndBgColorModifier())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
