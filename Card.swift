import SwiftUI

struct Card: View {
    let cardCount = 19
    @State private var activeIndex: Int = -1

    var body: some View {
        NavigationStack {
            ZStack {
                Image("cardbackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .clipped()
                    .edgesIgnoringSafeArea(.all)
                Text("Tap the images to return to the stars!")
                    .font(.system(size: 32, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                    .position(x: UIScreen.main.bounds.width * 0.55, y:UIScreen.main.bounds.height * 0.04)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: -UIScreen.main.bounds.width * 0.4) {
                        ForEach(0..<cardCount, id: \.self) { index in
                            ZStack {
                                Image("card")
                                    .resizable()
                                    .scaledToFill()
                                    .edgesIgnoringSafeArea(.all)
                                cardViewForIndex(index)
                            }
                            .rotation3DEffect(
                                .degrees(activeIndex == index ? 0 : -40),
                                axis: (x: 0, y: 1, z: 0),
                                anchor: .center
                            )
                            .scaleEffect(activeIndex == index ? 1 : 0.8)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    if activeIndex == index {
                                        activeIndex = -1
                                    } else {
                                        activeIndex = index
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
                NavigationLink(destination: Souvenir()) {
                    Text("Card")
                        .fontWeight(.heavy)
                        .font(.system(size: 48))
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.06)
                        .background(Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .padding(.bottom)
                .position(x: UIScreen.main.bounds.width * 0.53, y: UIScreen.main.bounds.height * 0.93)
                .simultaneousGesture(TapGesture().onEnded {
                    musicplayer
                        .shared.playSound(sound: "start", type: "wav")
                })
                NavigationLink(destination: Start()) {
                    Text("< back")
                        .font(.system(size: 24))
                        .foregroundColor(.red)
                        .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.06)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .position(x: UIScreen.main.bounds.width * 0.09, y:UIScreen.main.bounds.height * 0.04)
                .simultaneousGesture(TapGesture().onEnded {
                    musicplayer
                        .shared.playSound(sound: "back", type: "wav")
                    })
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}

struct Card_previews: PreviewProvider {
    static var previews: some View {
        Card().environmentObject(collect())
    }
}
