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
                CityAndDateView(weather: weather)
                Spacer()
                DegreeAndImageView(weather: weather)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            WeatherBottomCardView(weather: weather)
        }
        .edgesIgnoringSafeArea(.bottom)
        .modifier(ColorScehemeAndBgColorModifier())
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}

private struct CityAndDateView: View {
    var dateTime: String = "Today \(Date().formatted(.dateTime.month().day().hour().minute()))"
    let weather: WeatherModel
    var body: some View {
        VStack(alignment: .leading, spacing: SpacingConstants.xSmall.rawValue) {
            Text(weather.name)
                .modifier(TitleBoldModifier())
            Text(dateTime)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

private struct DegreeAndImageView: View {
    let weather: WeatherModel
    var body: some View {
        VStack {
            HStack {
                VStack(spacing: SpacingConstants.medium.rawValue) {
                    Image(systemName: ImageConstants.sunmax.rawValue)
                        .font(.system(size: FontSizeConstants.low.rawValue))

                    Text(weather.weather[0].main)
                }
                .frame(width: WidthConstants.high.rawValue, alignment: .leading)
                Spacer()
                // Degree Text
                Text(weather.main.feels_like.roundedDouble() + "°")
                    .font(.system(size: FontSizeConstants.height.rawValue))
                    .fontWeight(.bold)
                    .padding()
            }
            Spacer()
                .frame(height: HeightConstants.high.rawValue)

            NetworkImageView(imageUrl: PathConstants.photoUrl.rawValue)
            Spacer()
        }.frame(maxWidth: .infinity)
    }
}

private struct WeatherBottomCardView: View {
    let weather: WeatherModel
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: SpacingConstants.medium.rawValue) {
                Text(LocaleKeys.weatherNow.rawValue.locale())
                    .bold()
                    .padding(.bottom)
                BottomCardHStack(firstLogo: ImageConstants.thermometer.rawValue, secondLogo: ImageConstants.thermometer.rawValue, firstTitle: LocaleKeys.minTemp.rawValue, secondTitle: LocaleKeys.maxTemp.rawValue, firstValue: weather.main.temp_min.roundedDouble() + "°", secondValue: weather.main.temp_max.roundedDouble() + "°")
                BottomCardHStack(firstLogo: ImageConstants.wind.rawValue, secondLogo: ImageConstants.wind.rawValue, firstTitle: LocaleKeys.windSpeed.rawValue, secondTitle: LocaleKeys.humidity.rawValue, firstValue: weather.wind.speed.roundedDouble() + "m/s", secondValue: "\(weather.main.humidity)%")
            }.frame(maxWidth: .infinity, alignment: .leading)
                .modifier(WeatherBottomCardModifier())
        }
    }
}

private struct BottomCardHStack: View {
    let firstLogo: String
    let secondLogo: String
    let firstTitle: String
    let secondTitle: String
    let firstValue: String
    let secondValue: String
    var body: some View {
        HStack {
            WeatherRowSectionView(logo: firstLogo, title: firstTitle, value: firstValue)
            Spacer()
            WeatherRowSectionView(logo: secondLogo, title: secondTitle, value: secondValue)
        }
    }
}
