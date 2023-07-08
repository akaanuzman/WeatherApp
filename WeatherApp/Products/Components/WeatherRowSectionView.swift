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
        HStack(spacing: 20) {
            Image(systemName: logo)
                .font(.title)
                .frame(width: 20,height: 20)
                .padding()
                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.888))
                .cornerRadius(50)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.caption)
                
                Text(value)
                    .bold()
                    .font(.title)
            }
        }
    }
}

struct WeatherRowSectionView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRowSectionView(logo: "thermometer",title: "Feels like",value: "8°")
    }
}
