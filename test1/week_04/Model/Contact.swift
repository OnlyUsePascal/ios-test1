//
//  Contact.swift
//  test1
//
//  Created by Joun on 28/7/25.
//
import SwiftUI
import MapKit

struct Contact: Identifiable {
    var id = UUID()
    var name: String
    var phone: String
    var email: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var location: CLLocationCoordinate2D
}

