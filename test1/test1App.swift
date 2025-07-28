//
//  test1App.swift
//  test1
//
//  Created by Joun on 18/7/25.
//

import SwiftUI
import MapKit

@main
struct test1App: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
//            MagicMeView()
//            ContactList()
            MapView(
                location: CLLocationCoordinate2D(
                    latitude: 10.7951119,
                    longitude: 106.7195157
                )
            )
        }
    }
}
