//
//  Methuselah_Star.swift
//  Into the unknown
//
//  Created by Miriam Lin.
//

import SwiftUI

private struct LoopingImagesView: View {
    @State private var scrollOffset: CGFloat = 0
    private let animationDuration: Double = 1.6
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

struct Methuselah_Star: View {
    @EnvironmentObject var c: collect
    @State private var showCard = false
    @State private var nextstar = false
    @State private var back = false
    @State private var nextcard = false
    @State private var speed: Double = 1000000000000000
    @State private var speed2: Double = 100000000000000000
    @State private var distance: Double = 1800000000000000
    @State private var time: Double = 0
    @State private var currentTime: Double = 0
    @State private var timerIsActive = true
    @State private var ans = 0
    @State private var firstY: CGFloat = 0
    @State private var secondY: CGFloat = UIScreen.main.bounds.height
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    LoopingImagesView()
                    Image("rocket_4")
                    Text(String(format: "%.2f", currentTime))
                        .font(.system(size: 24, weight: .medium, design: .monospaced))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 48))
                        .shadow(color: .gray, radius: 3, x: 8, y: 0)
                        .kerning(10)
                        .padding(8)
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.74)
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
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.79)
                    if showCard {
                        Image("background1")
                            .resizable()
                            .scaledToFill()
                            .edgesIgnoringSafeArea(.all)
                        if nextcard{
                            ZStack {
                                ZStack{
                                    Image("card2")
                                        .resizable()
                                        .scaledToFill()
                                    Text("Rocket4")
                                        .font(.system(size: 72, weight: .heavy, design: .rounded))
                                        .foregroundColor(.white)
                                        .position(x: UIScreen.main.bounds.width * 0.52, y: UIScreen.main.bounds.height * 0.18)
                                        .shadow(color: .black.opacity(0.8), radius: 8, x: 10, y: 10)
                                    Image("rocket_4")
                                        .resizable()
                                        .scaledToFill()
                                    Text("\(Int(speed)) km/s")
                                        .foregroundColor(.white)
                                        .fontWeight(.heavy)
                                        .font(.system(size: 34))
                                        .position(x: UIScreen.main.bounds.width * 0.52, y: UIScreen.main.bounds.height * 0.75)
                                    Image("backbutton")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 80, height: 80)
                                        .clipShape(Circle())
                                        .position(x: UIScreen.main.bounds.width * 0.17, y: UIScreen.main.bounds.height * 0.1)
                                }
                                .offset(y: firstY)
                                .onAppear {
                                    withAnimation(Animation.easeIn(duration: 1)) {
                                        self.firstY = -UIScreen.main.bounds.height
                                    }
                                    withAnimation(Animation.easeOut(duration: 1).delay(1)) {
                                        self.secondY = 0
                                    }
                                }
                                ZStack{
                                    Image("card2")
                                        .resizable()
                                        .scaledToFill()
                                    Text("Rocket5")
                                        .font(.system(size: 72, weight: .heavy, design: .rounded))
                                        .foregroundColor(.white)
                                        .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.17)
                                        .shadow(color: .black.opacity(0.8), radius: 8, x: 10, y: 10)
                                    Image("rocket_5")
                                        .resizable()
                                        .scaledToFill()
                                    Text("\(Int(speed2)) km/s")
                                        .foregroundColor(.white)
                                        .fontWeight(.heavy)
                                        .font(.system(size: 30))
                                        .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.8)
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
                                }
                                .offset(y: secondY)
                            }
                        }
                        else{
                            ZStack{
                                Image("card")
                                    .resizable()
                                    .scaledToFill()
                                if back{
                                    ZStack{
                                        if ans == 0 {
                                            Text("In which constellation is the Methuselah star located?")
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
                                                Text("Libra")
                                                    .padding()
                                                    .font(.system(size: 30, design: .rounded))
                                                    .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                    .foregroundColor(.black)
                                                    .background(Color.white)
                                                    .cornerRadius(20)
                                                    .shadow(radius: 5)
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                            .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.4)
                                            Button(action: {
                                                self.ans = 2
                                                musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                            }) {
                                                Text("Scorpio")
                                                    .padding()
                                                    .font(.system(size: 30, design: .rounded))
                                                    .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                    .foregroundColor(.black)
                                                    .background(Color.white)
                                                    .cornerRadius(20)
                                                    .shadow(radius: 5)
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                            .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.52)
                                            Button(action: {
                                                self.ans = 3
                                                musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                            }) {
                                                Text("Leo")
                                                    .padding()
                                                    .font(.system(size: 30, design: .rounded))
                                                    .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                    .foregroundColor(.black)
                                                    .background(Color.white)
                                                    .cornerRadius(20)
                                                    .shadow(radius: 5)
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                            .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.64)
                                            Button(action: {
                                                self.ans = 4
                                                musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                            }) {
                                                Text("Gemini")
                                                    .padding()
                                                    .font(.system(size: 30, design: .rounded))
                                                    .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                    .foregroundColor(.black)
                                                    .background(Color.white)
                                                    .cornerRadius(20)
                                                    .shadow(radius: 5)
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                            .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.76)
                                        }
                                        else{
                                            if ans == 2 || ans == 3 || ans == 4 {
                                                Text("Wrong Answer. Guess again!")
                                                    .padding()
                                                    .font(.system(size: 30, design: .rounded))
                                                    .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.18)
                                                    .foregroundColor(.white)
                                                    .background(Color.red)
                                                    .cornerRadius(20)
                                                    .shadow(radius: 5)
                                                    .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.24)
                                            }
                                            else {
                                                Text("Correct!")
                                                    .padding()
                                                    .font(.system(size: 30, design: .rounded))
                                                    .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.18)
                                                    .foregroundColor(.white)
                                                    .background(Color.green)
                                                    .cornerRadius(20)
                                                    .shadow(radius: 5)
                                                    .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.24)
                                            }
                                            if ans == 1 {
                                                Button(action: {
                                                    self.ans = 0
                                                }) {
                                                    Text("Libra")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.white)
                                                        .background(Color.green)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.4)
                                                Button(action: {
                                                    self.ans = 2
                                                    musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                                }) {
                                                    Text("Scorpio")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.52)
                                                Button(action: {
                                                    self.ans = 3
                                                    musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                                }) {
                                                    Text("Leo")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.64)
                                                Button(action: {
                                                    self.ans = 4
                                                    musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                                }) {
                                                    Text("Gemini")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.76)
                                            }
                                            else if ans == 2 {
                                                Button(action: {
                                                    self.ans = 1
                                                    musicplayer.shared.playSound(sound: "correct", type: "wav")
                                                }) {
                                                    Text("Libra")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.4)
                                                Button(action: {
                                                    self.ans = 0
                                                }) {
                                                    Text("Scorpio")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.white)
                                                        .background(Color.red)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.52)
                                                Button(action: {
                                                    self.ans = 3
                                                    musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                                }) {
                                                    Text("Leo")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.64)
                                                Button(action: {
                                                    self.ans = 4
                                                    musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                                }) {
                                                    Text("Gemini")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.76)
                                            }
                                            else if ans == 3 {
                                                Button(action: {
                                                    self.ans = 1
                                                    musicplayer.shared.playSound(sound: "correct", type: "wav")
                                                }) {
                                                    Text("Libra")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.4)
                                                Button(action: {
                                                    self.ans = 2
                                                    musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                                }) {
                                                    Text("Scorpio")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.52)
                                                Button(action: {
                                                    self.ans = 0
                                                }) {
                                                    Text("Leo")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.white)
                                                        .background(Color.red)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.64)
                                                Button(action: {
                                                    self.ans = 4
                                                    musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                                }) {
                                                    Text("Gemini")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.76)
                                            }
                                            else{
                                                Button(action: {
                                                    self.ans = 1
                                                    musicplayer.shared.playSound(sound: "correct", type: "wav")
                                                }) {
                                                    Text("Libra")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.4)
                                                Button(action: {
                                                    self.ans = 2
                                                    musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                                }) {
                                                    Text("Scorpio")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.52)
                                                Button(action: {
                                                    self.ans = 3
                                                    musicplayer.shared.playSound(sound: "wrong", type: "wav")
                                                }) {
                                                    Text("Leo")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.black)
                                                        .background(Color.white)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.64)
                                                Button(action: {
                                                    self.ans = 0
                                                }) {
                                                    Text("Gemini")
                                                        .padding()
                                                        .font(.system(size: 30, design: .rounded))
                                                        .frame(width: geometry.size.width * 0.63, height: geometry.size.height * 0.1)
                                                        .foregroundColor(.white)
                                                        .background(Color.red)
                                                        .cornerRadius(20)
                                                        .shadow(radius: 5)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.76)
                                            }
                                        }
                                        Button(action: {
                                            self.nextcard = true
                                            c.card8 = true
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
                                    Methuselah_Star_Card()
                                    Button(action: {
                                        self.nextcard = true
                                        c.card8 = true
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
                .navigationDestination(isPresented: $nextstar) {
                    Black_Hole()
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
}

struct Methuselah_Star_previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            Methuselah_Star().environmentObject(collect())
        }
    }
}

