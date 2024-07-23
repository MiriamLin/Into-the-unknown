//
//  Introduction.swift
//  Into the unknown
//
//  Created by Miriam Lin on 2024/2/11.
//

import SwiftUI

struct Introduction: View {
    var body: some View {
        NavigationView {
                ZStack {
                    Color.black.edgesIgnoringSafeArea(.all)
                    VStack(spacing: 20) {
                        Text("""
                        Welcome, brave adventurers!
                        
                        In this game, you'll embark on a spacecraft that travels faster than light, venturing into the vast cosmos.
                        
                        Throughout your journey, you'll gain knowledge about various stars, engage in interactive games, collect unique souvenirs, and reach destinations unknown to humankind.
                        
                        Let’s embark on this thrilling journey together!
                        """)
                        .font(.custom("Courier", size: 36))
                        .foregroundColor(.white)
                        
                        NavigationLink(destination: Moon()) {
                            Text("Continue")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 48))
                                .shadow(color: .gray, radius: 3, x: 8, y: 0)
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            musicplayer
                                .shared.playSound(sound: "continue", type: "wav")
                            })
                    }
                    .padding(.horizontal, 100)
                }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}

struct Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Introduction().environmentObject(collect())
    }
}

