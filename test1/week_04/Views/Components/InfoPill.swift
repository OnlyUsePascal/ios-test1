//
//  InfoPill.swift
//  test1
//
//  Created by Joun on 28/7/25.
//
import SwiftUI

struct InfoPill: View {
    var image: Image
    var info: String

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(width: 350, height: 50)
            .overlay(
                HStack {
                    image.foregroundStyle(ColorConstants.rmitRed)
                    Text(info)
                        .foregroundStyle(.black)
                        .tint(.black)
                }
            )
            .padding(.all)
    }
}

#Preview {
    InfoPill(
        image: Image(systemName: "envelope.fill"),
        info: contactList[0].email,
    )

}
