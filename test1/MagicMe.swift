//
//  MagicMe.swift
//  test1
//
//  Created by Joun on 21/7/25.
//
import SwiftUI


struct MagicMeView: View {
    let allAnswers = [
        // Affirmative Answers
        "Bet.",
        "No cap.",
        "It's giving... yes.",
        "Slay.",
        "That's fire.",
        "Manifesting this for you.",
        "The vibes are immaculate.",
        "Let's get it.",
        
        // Negative Answers
        "It's giving... nope.",
        "That's a major L.",
        "Big yikes.",
        "I'm not the one.",
        "That's cringe.",
        "My sources say nah.",
        "The math ain't mathing.",
        "It's a no from me, dawg.",
        
        // Non-Committal & Unclear Answers
        "Vibe check.",
        "Ask again when my social battery is full.",
        "The rizz is unconfirmed.",
        "Reply hazy, try again... but make it ✨aesthetic✨.",
        "It's complicated, situationship-style.",
        "Let it cook.",
        "Main character energy is low.",
        "Check back after the next TikTok trend."
    ]
    
    @State var currentAnswer = "Tap me for wisdom..."
    
    var body: some View {
        ZStack{
            Color.mint.ignoresSafeArea()
            
            VStack {
                ZStack {
                    Image("magic-ball")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 260)
                    
                    Image("avatar-elon-musk")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140)
                        .clipShape(Circle())
                }
                
                VStack {
                    Text("Elon Ma")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundStyle(Color.black)
                    
                    Text("Vibe Engineer")
                        .font(.headline)
                        .foregroundStyle(Color.red)
                }
                
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.white)
                            .frame(width: 250, height: 50)
                        
                        HStack {
                            Image(systemName: "phone.fill")
                                .foregroundStyle(.red)
                            Text("0937461722")
                                .foregroundStyle(.black)
                        }
                        
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.white)
                            .opacity(0.8)
                            .frame(width: 250, height: 50)
                        
                        HStack {
                            Image(systemName: "envelope.fill")
                                .foregroundStyle(.red)
                            Text("s3927188@rmit.edu.vn")
                                .tint(.black)
                        }
                        
                    }
                }
                
                VStackLayout(alignment: .leading, spacing: 15){
                    HStack {
                        Image(systemName: "gamecontroller.fill")
                        Text("Gaming")
                    }
                    
                    HStack {
                        Image(systemName: "music.note")
                        Text("Listening to Music")
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(20)
                .foregroundStyle(.blue)
                
                Text(currentAnswer)
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .padding()
                    .background(.black.opacity(0.5))
                    .cornerRadius(15)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 1.5)) {
                            currentAnswer = allAnswers.randomElement()!
                        }
                    }
            }
        }
    }
}

#Preview {
    MagicMeView()
}

