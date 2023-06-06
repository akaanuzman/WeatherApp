//
//  ContentView.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 6/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           OnboardView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
