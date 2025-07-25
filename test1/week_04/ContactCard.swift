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

            VStack {
                VStack {
                    ZStack {
                        Image(contact.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .clipShape(Circle())
                    }
                    Text(contact.name)
                        .font(.system(size: 35, weight: .bold))
                        .foregroundStyle(Color.white)
                }

                Image("rmit-logo-white")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)

                VStackLayout {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(width: 250, height: 50)
                        .overlay(
                            HStack {
                                Image(systemName: "phone.fill")
                                    .foregroundStyle(ColorConstants.rmitRed)
                                Text(contact.phone)
                                    .foregroundStyle(.black)
                            }
                        )
                        .padding(.all)

                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(width: 250, height: 50)
                        .overlay(
                            HStack {
                                Image(systemName: "envelope.fill")
                                    .foregroundStyle(ColorConstants.rmitRed)
                                Text(contact.email)
                                    .foregroundStyle(.black)
                                    .tint(.black)
                            }
                        )
                        .padding(.all)
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
            imageName: "avatar-joun"
        )
    )
}
