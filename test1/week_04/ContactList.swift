//
//  ContactList.swift
//  test1
//
//  Created by Joun on 25/7/25.
//
import SwiftUI

struct Contact: Identifiable {
    var id = UUID()
    var name: String
    var phone: String
    var email: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

var contacts: [Contact] = [
    Contact(
        name: "joun",
        phone: "phone",
        email: "joun@mail.com",
        imageName: "avatar-joun"
    ),
    Contact(
        name: "elon",
        phone: "phone",
        email: "joun@mail.com",
        imageName: "avatar-elon"
    ),
    Contact(
        name: "legend",
        phone: "phone",
        email: "joun@mail.comm",
        imageName: "avatar-elon"
    ),
]

struct ContactRow: View {
    var contact: Contact

    var body: some View {
        HStack {
            contact.image
                .resizable()
                .frame(width: 50, height: 50)

            Text(contact.name)
        }
    }
}

struct ContactList: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()

            VStack {
                NavigationView {
                    List(contacts) { contact in
                        NavigationLink {
                            ContactCard(contact: contact)
                        } label: {
                            ContactRow(contact: contact)
                        }
                        .navigationTitle("SSET Contacts 📒")
                    }
                    .navigationTitle("SSET Contacts 📒")
                }
            }

        }
    }
}

#Preview {
    ContactList()
}
