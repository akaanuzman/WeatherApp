//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 6/7/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationViewModel: LocationViewModel
    var body: some View {
        VStack {
            VStack(spacing: SpacingConstants.medium.rawValue){
                Text(LocaleKeys.welcomeText.rawValue.locale())
                    .modifier(TitleBoldModifier())
                Text(LocaleKeys.welcomteSubtitle.rawValue.locale())
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButtonView(locationViewModel: _locationViewModel)
        }
        .modifier(InfinityWidthHeightModifier())
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

private struct LocationButtonView: View {
    @EnvironmentObject var locationViewModel: LocationViewModel
    var body: some View {
        LocationButton(.shareCurrentLocation) {
            locationViewModel.requestLocation()
        }
        .cornerRadius(CornerRadiusConstants.normal.rawValue)
        .symbolVariant(.fill)
        .foregroundColor(.white)
    }
}
