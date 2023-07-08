//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 7/7/23.
//

import SwiftUI

struct WeatherView: View {
    let weather: WeatherModel
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name)
                        .bold()
                        .font(.title)
                    Text("Today \(Date().formatted(.dateTime.month().day().hour().minute()))")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()

                VStack {
                    HStack {
                        VStack(spacing: 20) {
                            Image(systemName: "sun.max")
                                .font(.system(size: 40))

                            Text(weather.weather[0].main)
                        }
                        .frame(width: 150, alignment: .leading)
                        Spacer()
                        Text(weather.main.feels_like.roundedDouble() + "°")
                            .font(.system(size: 100))
                            .fontWeight(.bold)
                            .padding()
                    }
                    Spacer()
                        .frame(height: 80)
                    
                    AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png")) { phase in
                        switch phase {
                        case .empty:
                            LoadingView()
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 350)
                        case .failure(_):
                            Text("Failed to load image")
                        @unknown default:
                            Text("Unknown state.")
                        }
                    }
                    Spacer()
                }.frame(maxWidth: .infinity)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                Spacer()
                VStack(alignment: .leading, spacing: 20) {
                    Text("Weather now")
                        .bold()
                        .padding(.bottom)
                    
                    HStack {
                        WeatherRowSectionView(logo: "thermometer", title: "Min temp", value: (weather.main.temp_min.roundedDouble() + "°"))
                        Spacer()
                        WeatherRowSectionView(logo: "thermometer", title: "Max temp", value: (weather.main.temp_max.roundedDouble() + "°"))
                    }
                    HStack {
                        WeatherRowSectionView(logo: "wind", title: "Wind speed", value: (weather.wind.speed.roundedDouble() + "m/s"))
                        Spacer()
                        WeatherRowSectionView(logo: "humidity", title: "Humidity", value: "\(weather.main.humidity)%")
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .padding(.bottom,20)
                    .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
                    .background(.white)
                    .cornerRadius(20, corners: [.topLeft,.topRight])
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
