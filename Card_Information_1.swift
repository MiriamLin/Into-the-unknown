import SwiftUI

struct Andromeda_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Andromeda Galaxy")
                .fontWeight(.heavy)
                .font(.system(size: 54))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Andromeda")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("The Andromeda Galaxy is the closest large galaxy to the Milky Way. Scientists predict that in about 4 billion years, Andromeda will collide with the Milky Way, merging into a larger galaxy.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("23,650,000,000,000,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Asteroid_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Asteroid Belt")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Asteroid")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("An asteroid is a minor planet that orbits the Sun. There's a torus-shaped region between Mars and Jupiter called the Asteroid Belt. 98.5% of asteroids and a dwarf planet named Ceres are in this area.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("344,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Black_Hole_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Sagittarius A*")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("black_hole")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("Sagittarius A* is a supermassive black hole at the center of the Milky Way. Black holes have such strong gravity that not even light can escape once it crosses the event horizon. At their core lies a point called singularity, which has infinitely small volume and infinite density.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("236,500,000,000,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Jupiter_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Jupiter")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.52, y: geometry.size.height * 0.15)
            Image("Jupiter")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("Jupiter, the biggest planet in our solar system, is 11 times wider than Earth and has nearly a hundred moons. The Great Red Spot visible on Jupiter's surface is a massive anticyclonic storm at the southern edge of its equator, and it's large enough to hold two Earths inside. Also, Jupiter spins faster than any other planet in the solar system.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("778,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Laniakea_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Laniakea Supercluster")
                .fontWeight(.heavy)
                .font(.system(size: 48))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Laniakea")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("The Laniakea Supercluster consists of about 100,000 galaxies, made up of Virgo Supercluster, Hydra-Centaurus Supercluster, and Pavo-Indus Supercluster. At its center is a gravitational anomaly known as the Great Attractor. Uniquely, it is not bound by gravity and is expected to disperse in the future. (The photo is from Claus Lunau/science Photo Library)")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("4,920,000,000,000,000,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Local_Group_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Local Group")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Local_Group")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("The Local Group comprises about 50 galaxies, including our own Milky Way. The three main spiral galaxies in the Local Group are the Andromeda Galaxy, the Milky Way Galaxy, and the Triangulum Galaxy.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("94,600,000,000,000,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Mars_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Mars")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Mars")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("Mars, known as the \"Red Planet,\" looks red because of iron rust. Its Earth-like orbit, tilt, atmosphere, and water reserves make it one of the best option for human settlement. Mars also hosts the tallest volcano, Olympus Mons, and the largest canyon, Valles Marineris in the solar system.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("225,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Methuselah_Star_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Methuselah Star")
                .fontWeight(.heavy)
                .font(.system(size: 60))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Methuselah")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("HD 140283, or the Methuselah star, is a metal-poor subgiant star that formed shortly after the Big Bang.  It is the oldest known stars in the universe now.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("1,800,000,000,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Moon_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Moon")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Moon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("The Moon is Earth's only natural satellite, shaping our tides and calendars, and is the only place beyond Earth that humans have set foot on. It harbors water ice and abundant minerals, making it a candidate for human colonization. One interesting thing about the Moon is that it always shows us the same face because it spins at the same speed it orbits Earth.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("388,400 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Neptune_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Neptune")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Neptune")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("Neptune is the most distant planet from the Sun and can't be seen without a telescope. It's an ice giant like Uranus, composed mainly of gases heavier than hydrogen and helium, such as oxygen, carbon, nitrogen, and sulfur.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("4,500,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Oort_Cloud_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Oort Cloud")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Oort_Cloud")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("The Oort Cloud is a spherical shell of icy objects surrounding our solar system in theory, and it's believed to be the source of long-period comets. Even the fastest and farthest spacecraft, Voyager 1, would take 300 years to reach it and 30,000 years to cross it.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("15,000,000,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Pluto_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Pluto")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Pluto")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("Pluto used to be called a planet but is now considered a dwarf planet since it couldn't clear of other objects in its orbit. Pluto boasts a rich landscape of mountains, valleys, plains, craters, and glaciers.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("5,900,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Proxima_Centauri_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Proxima Centauri")
                .fontWeight(.heavy)
                .font(.system(size: 60))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Proxima")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("Proxima Centauri is the the closest star to the sun, and  it’s much smaller and lighter than sun. One of its planets, Proxima Centauri b, is in the habitable zone, making it a potential future home for humanity, since Proxima Centauri is a red dwarf that has a longer lifespan than the Sun.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("40,200,000,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Saturn_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Saturn")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Saturn")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("Saturn is famous for its bright rings made mainly of ice with some rock and dust. It has over 140 moons, more than any other planet, and it's the least dense planet among the solar system.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("1,400,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Sirius_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Sirius")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Sirius")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("Sirius appears as a single star but is actually a binary system made up of a blue main-sequence star and a white dwarf. It's the brightest star in the night sky, playing an important role in ancient civilizations around the world.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("81,400,000,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Universe_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Observable Universe")
                .fontWeight(.heavy)
                .font(.system(size: 54))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Universe")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("The observable universe is a spherical region centered on Earth. There are a couple of common misconceptions: first, the observable universe doesn't represent the entire universe, and its true shape is still unknown; second, the distance isn't about seeing light from that far away but is estimated through measurements of the Cosmic Microwave Background.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("440,000,000,000,000,000,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 20, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Unknown_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Unknown")
                .fontWeight(.heavy)
                .font(.system(size: 54))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("unknown")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("This area remains unexplored by humans. What lies beyond? Does the universe have an edge? Are there advanced alien civilizations? These are the mysteries left for us to uncover. Perhaps, we will be the one to discover the truth!")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text(" ? km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Uranus_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Uranus")
                .fontWeight(.heavy)
                .font(.system(size: 72))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Uranus")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("Uranus has the coldest atmosphere in the solar system, with temperaturesgoing down to -224°C. It spins on its side, almost at a 90-degree angle to its orbital plane, which is why people call it \"the lying planet.\"")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("2,900,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}

struct Virgo_Card: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Virgo Supercluster")
                .fontWeight(.heavy)
                .font(.system(size: 54))
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.15)
            Image("Virgo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 0.5)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.38)
            Text("Also known as the Local Supercluster, the Virgo Supercluster comprises over 100 galaxy groups and clusters.")
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.7)
            Text("1,040,000,000,000,000,000,000 km")
                .fontWeight(.heavy)
                .font(.system(size: 24, design: .rounded))
                .frame(width: geometry.size.width * 0.55)
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.84)
                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))
        }
    }
}


