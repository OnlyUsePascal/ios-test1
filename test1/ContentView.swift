//
//  ContentView.swift
//  test1
//
//  Created by Joun on 18/7/25.
//

import SwiftUI

func basic_1() -> some View {
    return VStack {
        Text("Welcome to RMIT!")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()

        Image(systemName: "star.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .foregroundColor(.yellow)

        Text("Enjoy learning IOS 😍")
            .font(.title2)
            .foregroundColor(.gray)
            .padding()
    }
}

func stack_01() -> some View {
    return VStack {
        VStack {
            HStack(spacing: 20) {
                Circle()
                    .fill(.red)
                    .frame(width: 50, height: 50)

                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height: 50)

                Capsule()
                    .fill(.blue)
                    .frame(width: 75, height: 50)
            }

            ZStack {
                Capsule()
                    .fill(.blue)
                    .frame(width: 75, height: 50)

                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height: 50)

                Circle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
            }
        }
    }
}

func stack_02() -> some View {
    return ZStack(alignment: .bottom) {
        Image("avatar-elon-musk")
            .resizable()
            .aspectRatio(contentMode: .fit)

        HStack {
            VStack(alignment: .leading) {
                Text("Elon Mú")
                    .font(.headline)
                Text("Tỉ phú hàng đầu Việt Nam")
                    .font(.subheadline)
            }
            Spacer()
        }
        .padding()
        .background(.white.opacity(0.7))
    }
}

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack {
                // zstack
                ZStack {
                    Image(systemName: "folder")
                        .font(.system(size: 55))
                    Text("❤️").font(.system(size: 65))
                }
                .clipped()

                Text("what")

                //overlay
                Image(systemName: "folder")
                    .font(.system(size: 45))
                    .overlay(
                        Text("❤️").font(.system(size: 55, weight: .thin)),
                        alignment: .bottom
                    )
                    .clipped()

                Text("This very long text is clipped")
                    .fixedSize()
                    .frame(width: 175, height: 150)
                    .border(Color.red)
                    .clipped()
            }
        }
    }

}

#Preview {
    ContentView()
}
