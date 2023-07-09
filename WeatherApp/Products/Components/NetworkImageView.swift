//
//  NetworkImageView.swift
//  WeatherApp
//
//  Created by Kaan Uzman on 9/7/23.
//

import SwiftUI

struct NetworkImageView: View {
    let imageUrl: String

    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            switch phase {
            case .empty:
                LoadingView()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: WidthConstants.extraHigh.rawValue)
            case .failure:
                Text("Failed to load image")
            @unknown default:
                Text("Unknown state.")
            }
        }
    }
}

struct NetworkImageView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkImageView(imageUrl: PathConstants.photoUrl.rawValue)
    }
}
