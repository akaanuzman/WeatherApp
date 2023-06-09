//
//  LoadingView.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 6/7/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .modifier(InfinityWidthHeightModifier())
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
