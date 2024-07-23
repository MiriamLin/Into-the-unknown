//
//  Jupiter.swift
//  Into the unknown
//
//  Created by Miriam Lin.
//

import SwiftUI

private struct LoopingImagesView: View {
    @State private var scrollOffset: CGFloat = 0
    private let animationDuration: Double = 6.4
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


struct Jupiter: View {
    @EnvironmentObject var c: collect
    @State private var showCard = false
    @State private var nextstar = false
    @State private var back = false
    @State private var speed: Double = 1000000000
    @State private var distance: Double = 778000000
    @State private var time: Double = 0
    @State private var currentTime: Double = 0
    @State private var timerIsActive = true
    @State private var ans = 0
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    LoopingImagesView()
                    Image("rocket_2")
                    Text(String(format: "%.2f", currentTime))
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 48))
                        .shadow(color: .gray, radius: 3, x: 8, y: 0)
                        .kerning(10)
                        .padding(8)
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
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
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.75)
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
                                    if ans == 0 {
                                        Text("Does Jupiter have rings?")
                                            .padding()
                                            .font(.system(size: 30, design: .rounded))
                                            .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.18)
                                            .background(Color.white)
                                            .cornerRadius(20)
                                            .shadow(radius: 5)
                                            .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.24)
                                        Button(action: {
                                            self.ans = 1
                                            musicplayer.shared.playSound(sound: "correct", type: "wav")
                                        }) {
                                            Text("O")
                                                .padding()
                                                .font(.system(size: 36, design: .rounded))
                                                .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2)
                                                .background(Color.white)
                                                .cornerRadius(20)
                                                .shadow(radius: 5)
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        .position(x: geometry.size.width * 0.36, y: geometry.size.height * 0.45)
                                        Button(action: {
                                            self.ans = 2
                                            musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                        }) {
                                            Text("X")
                                                .padding()
                                                .font(.system(size: 36, design: .rounded))
                                                .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2)
                                                .background(Color.white)
                                                .cornerRadius(20)
                                                .shadow(radius: 5)
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        .position(x: geometry.size.width * 0.68, y: geometry.size.height * 0.45)
                                    }
                                    else if ans == 1 {
                                        Text("Yes! Jupiter has four rings. In fact, all four gas giants—Jupiter, Saturn, Uranus, and Neptune—have rings.")
                                            .padding()
                                            .font(.system(size: 30, design: .rounded))
                                            .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.18)
                                            .background(Color.green)
                                            .foregroundColor(.white)
                                            .cornerRadius(20)
                                            .shadow(radius: 5)
                                            .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.24)
                                        Button(action: {
                                            self.ans = 0
                                        }) {
                                            Text("O")
                                                .padding()
                                                .font(.system(size: 36, design: .rounded))
                                                .foregroundColor(.white)
                                                .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2)
                                                .background(Color.green)
                                                .cornerRadius(20)
                                                .shadow(radius: 5)
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        .position(x: geometry.size.width * 0.36, y: geometry.size.height * 0.45)
                                        Button(action: {
                                            self.ans = 2
                                            musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                        }) {
                                            Text("X")
                                                .padding()
                                                .font(.system(size: 36, design: .rounded))
                                                .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2)
                                                .background(Color.white)
                                                .cornerRadius(20)
                                                .shadow(radius: 5)
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        .position(x: geometry.size.width * 0.68, y: geometry.size.height * 0.45)
                                    }
                                    else {
                                        Text("Actually, Jupiter has four rings. In fact, all four gas giants—Jupiter, Saturn, Uranus, and Neptune—have rings.")
                                            .padding()
                                            .font(.system(size: 30, design: .rounded))
                                            .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.18)
                                            .background(Color.red)
                                            .foregroundColor(.white)
                                            .cornerRadius(20)
                                            .shadow(radius: 5)
                                            .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.24)
                                        Button(action: {
                                            self.ans = 1
                                            musicplayer.shared.playSound(sound: "correct", type: "wav")
                                        }) {
                                            Text("O")
                                                .padding()
                                                .font(.system(size: 36, design: .rounded))
                                                .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2)
                                                .background(Color.white)
                                                .cornerRadius(20)
                                                .shadow(radius: 5)
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        .position(x: geometry.size.width * 0.36, y: geometry.size.height * 0.45)
                                        Button(action: {
                                            self.ans = 0
                                        }) {
                                            Text("X")
                                                .padding()
                                                .font(.system(size: 36, design: .rounded))
                                                .foregroundColor(.white)
                                                .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2)
                                                .background(Color.red)
                                                .cornerRadius(20)
                                                .shadow(radius: 5)
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        .position(x: geometry.size.width * 0.68, y: geometry.size.height * 0.45)
                                        Button(action: {
                                            self.nextstar = true
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
                                    Button(action: {
                                        self.nextstar = true
                                        c.card4 = true
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
                                Jupiter_Card()
                                Button(action: {
                                    self.nextstar = true
                                    c.card4 = true
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
                    Saturn()
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

struct Jupiter_previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            Jupiter().environmentObject(collect())
        }
    }
}



