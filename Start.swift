import SwiftUI

struct Start: View {
    @State private var startNow = 0
    @EnvironmentObject var c: collect
    let starts = ["start1", "start2"]

    var body: some View {
        NavigationView{
            ZStack {
                Image("start_background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                Image(starts[startNow])
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
                            withAnimation(.easeInOut(duration: 1)) {
                                startNow = (startNow + 1) % starts.count
                            }
                        }
                    }
                Image("start_element")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                NavigationLink(destination: Introduction()) {
                    Text("Start")
                        .fontWeight(.heavy)
                        .font(.system(size: 48))
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.09)
                        .background(Color.green)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .padding(.bottom)
                .position(x: UIScreen.main.bounds.width * 0.5, y:UIScreen.main.bounds.height * 0.52)
                .simultaneousGesture(TapGesture().onEnded {
                    musicplayer
                        .shared.playSound(sound: "start", type: "wav")
                    })
                NavigationLink(destination: Souvenir()) {
                    Text("Collection")
                        .fontWeight(.heavy)
                        .font(.system(size: 48))
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.09)
                        .background(Color.yellow)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .padding(.bottom)
                .position(x: UIScreen.main.bounds.width * 0.5, y:UIScreen.main.bounds.height * 0.63)
                .simultaneousGesture(TapGesture().onEnded {
                    musicplayer
                        .shared.playSound(sound: "start", type: "wav")
                    })
            }
            .alert(isPresented: $c.showalert) {
                Alert(
                    title: Text("Notice"),
                    message: Text("This App is ONLY for IPAD!"),
                    dismissButton: .default(Text("OK"), action: {
                        c.showalert = false
                    })
                )
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}
struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start().environmentObject(collect())
    }
}
