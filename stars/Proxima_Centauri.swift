//
//  Proxima_Centauri.swift
//  Into the unknown
//
//  Created by Miriam Lin.
//

import SwiftUI

private struct LoopingImagesView: View {
    @State private var scrollOffset: CGFloat = 0
    private let animationDuration: Double = 3.2
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


struct Proxima_Centauri: View {
    @EnvironmentObject var c: collect
    @State private var showCard = false
    @State private var nextstar = false
    @State private var back = false
    @State private var speed: Double = 10000000000000
    @State private var distance: Double = 40200000000000
    @State private var time: Double = 0
    @State private var currentTime: Double = 0
    @State private var timerIsActive = true
    @State private var ans = 0
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    LoopingImagesView()
                    Image("rocket_3")
                    Text(String(format: "%.2f", currentTime))
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 48))
                        .shadow(color: .gray, radius: 3, x: 8, y: 0)
                        .kerning(10)
                        .padding(8)
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.73)
                        .onReceive(Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()) { _ in
                            if timerIsActive && currentTime < time  {
                                currentTime += 0.01
                            }
                        }
                    Text("\(Int(speed)) km/s")
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 48))
                        .shadow(color: .gray, radius: 3, x: 8, y: 0)
                        .kerning(5)
                        .padding(8)
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.78)
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
                                    Text("How long would it take to reach the nearest star excluding the Sun?")
                                        .fontWeight(.bold)
                                        .frame(width: geometry.size.width * 0.7)
                                        .font(.system(size: 30))
                                        .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.2)
                                    VStack{
                                        Text("If your spaceship's speed is ")
                                            .font(.system(size: 24))
                                        + Text("\(speed, specifier: "%.0f")")
                                            .foregroundColor(.red)
                                            .font(.system(size: 24))
                                        + Text(" km/s")
                                            .font(.system(size: 24))
                                        Spacer().frame(height: 10)
                                        Text("It would take ")
                                            .font(.system(size: 24))
                                        + Text("\(40200000000000 / speed / 3600 / 24, specifier: "%.0f")")
                                            .foregroundColor(.red)
                                            .font(.system(size: 24))
                                        + Text(" days to arrive")
                                            .font(.system(size: 24))
                                        Spacer().frame(height: 30)
                                        Slider(value: $speed, in: 0...299792, step: 1)
                                        Text("""
                                The current fastest spacecraft, NASA Parker Solar Probe, has a top speed of 176 km/s
                                """)
                                        .font(.system(size: 24))
                                        .padding(.top, 30)
                                        .multilineTextAlignment(.leading)
                                        Text("""
                                The theoretically achievable fastest speed is 3000000 km/s
                                """)
                                        .font(.system(size: 24))
                                        .padding(.top, 10)
                                    }
                                    .frame(width: geometry.size.width * 0.6)
                                    Button(action: {
                                        self.nextstar = true
                                        c.card13 = true
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
                                Proxima_Centauri_Card()
                                Button(action: {
                                    self.nextstar = true
                                    c.card13 = true
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
                    Sirius()
                }
                .onAppear {
                    self.time = self.distance / self.speed
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

struct Proxima_Centauri_previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            Proxima_Centauri().environmentObject(collect())
        }
    }
}



