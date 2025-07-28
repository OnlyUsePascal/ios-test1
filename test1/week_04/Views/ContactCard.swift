import MapKit
//
//  ContactCard.swift
//  test1
//
//  Created by Joun on 25/7/25.
//
import SwiftUI

struct ContactCard: View {
    var contact: Contact

    var body: some View {
        ZStack {
            ColorConstants.rmitBlue
                .ignoresSafeArea()

            ScrollView {
                VStack {
                    MapView(location: contact.location)
                        .ignoresSafeArea()
                        .frame(height: 250)

                    CircleImage(image: contact.image)
                        .frame(width: 200)
                        .offset(y: -90)
                        .padding(.bottom, -90)

                    Text(contact.name)
                        .font(.system(size: 35, weight: .bold))
                        .foregroundStyle(Color.white)

                    Image("rmit-logo-white")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)

                    VStackLayout {
                        InfoPill(
                            image: Image(systemName: "phone.fill"),
                            info: contact.phone
                        )
                        InfoPill(
                            image: Image(systemName: "envelope.fill"),
                            info: contact.email
                        )
                    }
                }
            }
        }
        .navigationTitle(contact.name)
        .navigationBarTitleDisplayMode(.inline)
    }

}

#Preview {
    ContactCard(
        contact: Contact(
            name: "joun",
            phone: "phone",
            email: "joun@mail.com",
            imageName: "avatar-joun",
            location: CLLocationCoordinate2D(
                latitude: 10.7951119,
                longitude: 106.7195157
            )
        )
    )
}
