//
//  MapView.swift
//  test1
//
//  Created by Joun on 25/7/25.
//

import MapKit
import SwiftUI

//var defaultLoc = CLLocationCoordinate2D(
//    latitude: 10.7951119,
//    longitude: 106.7195157
//)
//
//var defaultLoc2 = CLLocationCoordinate2D(
//    latitude: 10.7951119,
//    longitude: 106.72095157
//)

struct MapView: View {
    var location: CLLocationCoordinate2D

    var body: some View {
        Map(
            initialPosition: .region(
                MKCoordinateRegion(
                    center: location,
                    span: MKCoordinateSpan(
                        latitudeDelta: 0.04,
                        longitudeDelta: 0.04
                    )
                )
            )
        ) {
            Marker(
                "marker 1",
                coordinate: location,
            )
            .tint(.orange)
            Annotation("annotation 1", coordinate: location) {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.yellow)
                    Text("🚕")
                        .padding(5)
                }
            }
        }
        .mapControlVisibility(.visible)
    }
}

#Preview {
    MapView(
        location: CLLocationCoordinate2D(
            latitude: 10.7951119,
            longitude: 106.7195157
        )
    )
}
