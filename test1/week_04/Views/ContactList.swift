//
//  ContactList.swift
//  test1
//
//  Created by Joun on 25/7/25.
//
import SwiftUI
import MapKit



struct ContactList: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()

            VStack {
                NavigationView {
                    List(contactList) { contact in
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
