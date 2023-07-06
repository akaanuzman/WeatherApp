//
//  ContentView.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 6/6/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationViewModel = LocationViewModel()
    var body: some View {
        VStack {
            if let location = locationViewModel.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            } else {
                if locationViewModel.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationViewModel)
                }
            }
        }.background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354)).preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
