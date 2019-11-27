//
//  ContentView.swift
//  PMSwiftUI
//
//  Created by Rifat Firdaus on 08/11/19.
//  Copyright © 2019 Rifat Firdaus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let mapView = MapView()
    let image = CircleImage()
    var body: some View {
        VStack {
            mapView
                .edgesIgnoringSafeArea(.top)
                .frame(height: mapView.height)
            image
                .offset(y: -(image.imageWidth / 2))
                .padding(.bottom,-(image.imageWidth / 2))
            TitleView()
            Spacer()
        }
    }
}

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
