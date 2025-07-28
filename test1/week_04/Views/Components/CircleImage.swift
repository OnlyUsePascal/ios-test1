//
//  CircleImage.swift
//  test1
//
//  Created by Joun on 28/7/25.
//

import SwiftUI
import MapKit

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color("rmit-red"), lineWidth: 3))
            .shadow(color:Color("rmit-blue"), radius: 10)
    }
}

#Preview {
    CircleImage(image: contactList[0].image)
}
