import SwiftUI

@main
struct MyApp: App {
    var c = collect()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(collect())
        }
    }
}
