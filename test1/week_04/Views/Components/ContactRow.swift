//
//  ContactRow.swift
//  test1
//
//  Created by Joun on 28/7/25.
//


import SwiftUI
import MapKit

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

#Preview {
    ContactRow(contact: contactList[0])
}
