//
//  WeatherRowSectionView.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 8/7/23.
//

import SwiftUI

struct WeatherRowSectionView: View {
    var logo: String
    var title: String
    var value: String
    var body: some View {
        HStack(spacing: SpacingConstants.medium.rawValue) {
            Image(systemName: logo)
                .font(.title)
                .frame(width: WidthConstants.extraLow.rawValue,height: HeightConstants.low.rawValue)
                .padding()
                .background(Color.lightGray)
                .cornerRadius(CornerRadiusConstants.high.rawValue)
            
            VStack(alignment: .leading, spacing: SpacingConstants.small.rawValue) {
                Text(title.locale())
                    .font(.caption)
                
                Text(value)
                    .modifier(TitleBoldModifier())
            }
        }
    }
}

struct WeatherRowSectionView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRowSectionView(logo: "thermometer",title: "Feels like",value: "8°")
    }
}
