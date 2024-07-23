//
//  Souvenir.swift
//  Into the unknown
//
//  Created by Miriam Lin.
//

import SwiftUI

class collect: ObservableObject {
    @Published var collection1: Bool = false
    @Published var collection2: Bool = false
    @Published var collection3: Bool = false
    @Published var collection4: Bool = false
    @Published var collection5: Bool = false
    @Published var collection6: Bool = false
    @Published var showalert: Bool = true
    @Published var card1: Bool = false
    @Published var card2: Bool = false
    @Published var card3: Bool = false
    @Published var card4: Bool = false
    @Published var card5: Bool = false
    @Published var card6: Bool = false
    @Published var card7: Bool = false
    @Published var card8: Bool = false
    @Published var card9: Bool = false
    @Published var card10: Bool = false
    @Published var card11: Bool = false
    @Published var card12: Bool = false
    @Published var card13: Bool = false
    @Published var card14: Bool = false
    @Published var card15: Bool = false
    @Published var card16: Bool = false
    @Published var card17: Bool = false
    @Published var card18: Bool = false
    @Published var card19: Bool = false
}

struct Souvenir: View {
    @EnvironmentObject var c: collect
    @State private var back = false
    var body: some View {
        NavigationStack{
            ZStack{
                Image("collection")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                if c.collection1{
                    Image("collection_1_1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                else{
                    Image("collection_1_0")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                if c.collection2{
                    Image("collection_2_1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                else{
                    Image("collection_2_0")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                if c.collection3{
                    Image("collection_3_1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                else{
                    Image("collection_3_0")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                if c.collection4{
                    Image("collection_4_1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                else{
                    Image("collection_4_0")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                if c.collection5{
                    Image("collection_5_1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                else{
                    Image("collection_5_0")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                if c.collection6{
                    Image("collection_6_1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                else{
                    Image("collection_6_0")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                NavigationLink(destination: Card()) {
                    Text("Souvenir")
                        .fontWeight(.heavy)
                        .font(.system(size: 48))
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.06)
                        .background(Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .padding(.bottom)
                .position(x: UIScreen.main.bounds.width * 0.53, y:UIScreen.main.bounds.height * 0.93)
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
                .position(x: UIScreen.main.bounds.width * 0.1, y:UIScreen.main.bounds.height * 0.02)
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

struct Souvenir_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Souvenir().environmentObject(collect())
        }
    }
}


