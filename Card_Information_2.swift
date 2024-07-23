import SwiftUI

struct andromeda_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card1{
                    NavigationStack {
                        ZStack {
                            Andromeda_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Andromeda")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Andromeda()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct asteroid_Card: View{
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card2{
                    NavigationStack {
                        ZStack {
                            Asteroid_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Asteroid")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Asteroid()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

    

struct black_hole_Card: View{
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card3{
                    NavigationStack {
                        ZStack {
                            Black_Hole_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("black_hole")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Black_Hole()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}



struct jupiter_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card4{
                    NavigationStack {
                        ZStack {
                            Jupiter_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Jupiter")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Jupiter()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}



struct laniakea_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card5{
                    NavigationStack {
                        ZStack {
                            Laniakea_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Laniakea")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Laniakea()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct local_group_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card6{
                    NavigationStack {
                        ZStack {
                            Local_Group_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Local_Group")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Local_Group()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}



struct mars_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card7{
                    NavigationStack {
                        ZStack {
                            Mars_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Mars")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Mars()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}


struct methuselah_star_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card8{
                    NavigationStack {
                        ZStack {
                            Methuselah_Star_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Methuselah")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Methuselah_Star()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}



struct moon_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card9{
                    NavigationStack {
                        ZStack {
                            Moon_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Moon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Moon()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}


struct neptune_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card10{
                    NavigationStack {
                        ZStack {
                            Neptune_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Neptune")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Neptune()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}


struct oort_cloud_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card11{
                    NavigationStack {
                        ZStack {
                            Oort_Cloud_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Oort_Cloud")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Oort_Cloud()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}



struct pluto_Card: View{
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card12{
                    NavigationStack {
                        ZStack {
                            Pluto_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Pluto")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Pluto()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct proxima_centauri_Card: View  {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card13{
                    NavigationStack {
                        ZStack {
                            Proxima_Centauri_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Proxima")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Proxima_Centauri()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct saturn_Card: View{
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card14{
                    NavigationStack {
                        ZStack {
                            Saturn_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Saturn")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Saturn()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}


struct sirius_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card15{
                    NavigationStack {
                        ZStack {
                            Sirius_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Sirius")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Sirius()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct universe_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card16{
                    NavigationStack {
                        ZStack {
                            Universe_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Universe")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Universe()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct unknown_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card17{
                    NavigationStack {
                        ZStack {
                            Unknown_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Unknown")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Unknown()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct uranus_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card18{
                    NavigationStack {
                        ZStack {
                            Uranus_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Uranus")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Uranus()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}


struct virgo_Card: View {
    @EnvironmentObject var c: collect
    @State private var goto = false
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                if c.card19{
                    NavigationStack {
                        ZStack {
                            Virgo_Card()
                            Button(action: {
                                self.goto = true
                            }) {
                                Image("Virgo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 0.5)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
                        }
                    }
                    .navigationDestination(isPresented: $goto) {
                        Virgo()
                    }
                }
                else{
                    Image("question_mark")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}


func cardViewForIndex(_ index: Int) -> some View {
    switch index {
    case 13:
        return AnyView(andromeda_Card())
    case 2:
        return AnyView(asteroid_Card())
    case 12:
        return AnyView(black_hole_Card())
    case 3:
        return AnyView(jupiter_Card())
    case 16:
        return AnyView(laniakea_Card())
    case 14:
        return AnyView(local_group_Card())
    case 1:
        return AnyView(mars_Card())
    case 11:
        return AnyView(methuselah_star_Card())
    case 0:
        return AnyView(moon_Card())
    case 6:
        return AnyView(neptune_Card())
    case 8:
        return AnyView(oort_cloud_Card())
    case 7:
        return AnyView(pluto_Card())
    case 9:
        return AnyView(proxima_centauri_Card())
    case 4:
        return AnyView(saturn_Card())
    case 10:
        return AnyView(sirius_Card())
    case 17:
        return AnyView(universe_Card())
    case 18:
        return AnyView(unknown_Card())
    case 5:
        return AnyView(uranus_Card())
    case 15:
        return AnyView(virgo_Card())
    default:
        return AnyView(Text("Unknown Card"))
    }
}

