//
//  CircleImage.swift
//  PMSwiftUI
//
//  Created by Rifat Firdaus on 27/11/19.
//  Copyright © 2019 Rifat Firdaus. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var imageWidth = UIScreen.main.bounds.width / 2
    var body: some View {
        Image("building")
            .resizable()
            .frame(width: imageWidth, height: imageWidth)
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
