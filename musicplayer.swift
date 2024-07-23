import Foundation
import AVFoundation

class musicplayer {
    static let shared = musicplayer()
    var Player: AVAudioPlayer?
    
    func playSound(sound: String, type: String) {
        guard let bundlePath = Bundle.main.path(forResource: sound, ofType: type) else { return }
        
        let url = URL(fileURLWithPath: bundlePath)
        
        do {
            Player = try AVAudioPlayer(contentsOf: url)
            Player?.prepareToPlay()
            Player?.play()
        } catch {
            
        }
    }
}

