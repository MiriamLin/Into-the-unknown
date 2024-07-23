//
//  Universe.swift
//  Into the unknown
//
//  Created by Miriam Lin.
//

import SwiftUI

private struct LoopingImagesView: View {
    @State private var scrollOffset: CGFloat = 0
    private let animationDuration: Double = 0.1
    private let backgrounds = ["background1", "background2"]

    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ForEach(0..<backgrounds.count * 100, id: \.self) { index in
                    Image(self.backgrounds[index % backgrounds.count])
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
            .offset(y: scrollOffset)
            .onAppear {
                let singleImageHeight = geometry.size.height
                let totalHeight = singleImageHeight * CGFloat(backgrounds.count * 100)
                scrollOffset = -totalHeight / 2
                withAnimation(Animation.linear(duration: animationDuration)) {
                    scrollOffset += singleImageHeight
                }
                Timer.scheduledTimer(withTimeInterval: animationDuration, repeats: true) { _ in
                    withAnimation(Animation.linear(duration: animationDuration)) {
                        scrollOffset += singleImageHeight
                    }
                    
                    if scrollOffset >= 0 {
                        scrollOffset = -totalHeight / 2
                    }
                }
            }

        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Universe: View {
    @EnvironmentObject var c: collect
    @State private var showCard = false
    @State private var nextstar = false
    @State private var back = false
    @State private var speed_str = "100,000,000,000,000,000,000,000 km/s"
    @State private var distance_str = "440,000,000,000,000,000,000,000 km"
    @State private var time: Double = 4.4
    @State private var currentTime: Double = 0
    @State private var timerIsActive = true
    @State private var ans = 0
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    LoopingImagesView()
                    Image("rocket_8")
                    Text(String(format: "%.2f", currentTime))
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 48))
                        .shadow(color: .gray, radius: 3, x: 8, y: 0)
                        .kerning(10)
                        .padding(8)
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.75)
                        .onReceive(Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()) { _ in
                            if timerIsActive && currentTime < time  {
                                currentTime += 0.01
                            }
                        }
                    Text(speed_str)
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 48))
                        .shadow(color: .gray, radius: 3, x: 8, y: 0)
                        .kerning(5)
                        .padding(8)
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.8)
                    if showCard {
                        Image("background1")
                            .resizable()
                            .scaledToFill()
                            .edgesIgnoringSafeArea(.all)
                        ZStack{
                            Image("card")
                                .resizable()
                                .scaledToFill()
                            if back{
                                ZStack{
                                    Image("observe")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: geometry.size.width * 0.6)
                                        .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.4)
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("We are just an advanced breed of monkeys on a minor planet of a very average star. But we can understand the Universe. That makes us something very special.")
                                            .font(.title)
                                            .fontWeight(.medium)
                                            .italic()
                                            .foregroundColor(.white)
                                            .padding()
                                            .overlay(RoundedRectangle(cornerRadius: 16)
                                                .stroke(Color.blue, lineWidth: 4))
                                            .background(Color.blue)
                                            .cornerRadius(16)
                                            .shadow(radius: 10)
                                        Text("- Stephen Hawking")
                                            .font(.headline)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                            .padding([.trailing, .bottom])
                                    }
                                    .frame(width: geometry.size.width * 0.6)
                                    .padding()
                                    .background(Color.black.opacity(0.7))
                                    .cornerRadius(20)
                                    .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.65)
                                    Button(action: {
                                        self.nextstar = true
                                        c.card16 = true
                                        musicplayer.shared.playSound(sound: "backbutton", type: "wav")
                                    }) {
                                        Image("backbutton")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        .position(x: geometry.size.width * 0.17, y: geometry.size.height * 0.1)
                                    Button(action: {
                                        withAnimation(.easeInOut(duration: 1.0)) {
                                            self.back.toggle()
                                        }
                                        musicplayer.shared.playSound(sound: "turnoverbutton", type: "wav")
                                    }) {
                                        Image("turnoverbutton")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 80, height: 80)
                                            .clipShape(Circle())
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        .position(x: geometry.size.width * 0.86, y: geometry.size.height * 0.1)
                                }
                                .rotation3DEffect(
                                    .degrees(180),
                                    axis: (x: 0.0, y: 1.0, z: 0.0)
                                )
                            }
                            else{
                                Universe_Card()
                                Button(action: {
                                    self.nextstar = true
                                    c.card16 = true
                                    musicplayer.shared.playSound(sound: "backbutton", type: "wav")
                                }) {
                                    Image("backbutton")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 80, height: 80)
                                        .clipShape(Circle())
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    .position(x: geometry.size.width * 0.17, y: geometry.size.height * 0.1)
                                Button(action: {
                                    withAnimation(.easeInOut(duration: 1.0)) {
                                        self.back.toggle()
                                    }
                                    musicplayer.shared.playSound(sound: "turnoverbutton", type: "wav")
                                }) {
                                    Image("turnoverbutton")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 80, height: 80)
                                        .clipShape(Circle())
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    .position(x: geometry.size.width * 0.86, y: geometry.size.height * 0.1)
                            }
                        }
                        .rotation3DEffect(
                            .degrees(back ? 180 : 0),
                            axis: (x: 0.0, y: 1.0, z: 0.0)
                        )
                        }
                    NavigationLink(destination: Start()) {
                        Text("< back")
                            .font(.system(size: 24))
                            .foregroundColor(.red)
                            .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.06)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    .position(x: UIScreen.main.bounds.width * 0.08, y:UIScreen.main.bounds.height * 0.02)
                    .simultaneousGesture(TapGesture().onEnded {
                        musicplayer
                            .shared.playSound(sound: "back", type: "wav")
                        })
                    }
                }
                .navigationDestination(isPresented: $nextstar) {
                    Unknown()
                }
                .onAppear {
                    let startTime = Date()
                    self.timerIsActive = true
                    Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
                        let nowtime = Date().timeIntervalSince(startTime)
                        if nowtime < self.time {
                            self.currentTime = nowtime
                        } else {
                            self.timerIsActive = false
                            timer.invalidate()
                            withAnimation {
                                self.showCard = true
                            }
                        }
                    }
                }
            }
            .navigationViewStyle(.stack)
            .navigationBarBackButtonHidden(true)
    }
}

struct Universe_previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            Universe().environmentObject(collect())
        }
    }
}


