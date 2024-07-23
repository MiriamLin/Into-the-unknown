//
//  End.swift
//  Into the unknown
//
//  Created by Miriam Lin.
//

import SwiftUI

struct End: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("background1")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    Text("Thanks for playing the game!")
                        .font(.system(size: 44, weight: .heavy, design: .rounded))
                        .padding(.vertical, 20)
                        .frame(width: UIScreen.main.bounds.width * 0.85)
                    Text("""
                    Hello, I’m Miriam, a computer science student passionate about coding, science, traveling, biking, and books. My dream is to create something unprecedented through the power of coding.
                    
                    I love thinking, learning, and imagining. In a science class, my teacher mentioned it’s almost impossible for humans to venture beyond the Local Group. It's a pity we live in such a vast universe but can’t fully explore it. That's why I developed this app—to connect our dreams with reality for myself and many others.
                    
                    In this app, we launch on faster-than-light rocket journeys, explore the universe, and learn about astronomy through games and education! I also use real data to enhance its authenticity and have mixed in elements of physics, literature, mythology, and culture with astronomy to make it engaging.
                    
                    I've always wanted to use coding to make the impossible possible. I hope this app will ignite a passion for STEM in children and teenagers, and inspire them to code more.
                    
                    This app is dedicated to the tireless souls in astronomy. Their efforts show us our smallness and, within that, our boundless potential.
                    
                    Let's dream big, together!
                    """)
                    .font(.system(size: 36))
                    .foregroundColor(.black)
                    .padding(.horizontal, 50)
                    NavigationLink(destination: Start()) {
                        Text("End")
                            .fontWeight(.heavy)
                            .font(.system(size: 48))
                            .foregroundColor(.white)
                            .padding(.vertical, 30)
                            .padding(.horizontal, 60)
                            .background(Color.green)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .padding(.vertical, 50)
                    }
                }
                .background(Color(red: 255/255, green: 255/255, blue: 204/255))
                .frame(width: UIScreen.main.bounds.width * 0.85)
                .cornerRadius(10)
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}

struct End_Previews: PreviewProvider {
    static var previews: some View {
        End().environmentObject(collect())
    }
}
