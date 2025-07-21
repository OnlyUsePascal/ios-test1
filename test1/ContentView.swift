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
            HStack(spacing: 20){
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
            
            ZStack(){
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
                Text("Tỉ phú Việt Nam")
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
//        basic_1()
//        stack_01()
//        stack_02()
    }
}

#Preview {
    ContentView()
}
