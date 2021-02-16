//
//  ContentView.swift
//  Adventure
//
//  Created by Dan Beers on 2/11/21.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var musicPlayer: AVAudioPlayer!
    @State var soundEffect: AVAudioPlayer!
    @State var thunderEffect: AVAudioPlayer!
    var body: some View {
        VStack {
            VStack {
                Text("A Haunting")
                    .font(.title)
                    .padding()
                Text("Scary business beyond here.")
            }
            .onAppear() {
                if let mainViewMusic = NSDataAsset(name: "MainViewMusic") {
                    musicPlayer = try! AVAudioPlayer(data: mainViewMusic.data, fileTypeHint: "mp3")
                    musicPlayer.play()
                }
                if let breath = NSDataAsset(name: "Breath") {
                    soundEffect = try! AVAudioPlayer(data: breath.data, fileTypeHint: "mp3")
                }
                if let thunder = NSDataAsset(name: "Thunder") {
                    thunderEffect = try! AVAudioPlayer(data: thunder.data, fileTypeHint: "mp3")
                }
            }
            .onTapGesture {
                thunderEffect.play()
                musicPlayer.setVolume(0, fadeDuration: 1)
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    musicPlayer.stop()
                }
            }
            Text("Click here to be freaked out.")
                .onTapGesture {
                    soundEffect.play()
                }
            
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
