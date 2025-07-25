//
//  ContactCard.swift
//  test1
//
//  Created by Joun on 25/7/25.
//
import SwiftUI

struct ContactCard: View {
    var body: some View {
        ZStack {
            ColorConstants.rmitBlue

            VStack {
                VStack {
                    ZStack {
                        Image("avatar-elon-musk")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .clipShape(Circle())
                    }
                    Text("Elon Ma")
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
                                Text("099123124")
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
                                Text("joun@pham.com")
                                    .foregroundStyle(.black)
                                    .tint(.black)
                            }
                        )
                        .padding(.all)
                }
            }
        }
    }

}

#Preview {
    ContactCard()
}
