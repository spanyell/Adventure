//
//  FadeEffectView.swift
//  Adventure
//
//  Created by Dan Beers on 2/15/21.
//

import SwiftUI
import AVKit



struct FadeEffectView: View {
    
    func moveWords() {
        onceMove.toggle()
            
    }
    
    @State private var fadeInOut = true
    @State private var fadeInOut2 = true
    @State private var fadeInOut3 = true
    @State private var fadeInOut4 = true
    @State private var fadeInOut5 = true
    @State private var onceMove = true
    @State private var uponMove = true
    @State private var aMove = true
    @State private var timeMove = true
    @State var musicPlayer: AVAudioPlayer!
    @State var thunderEffect: AVAudioPlayer!
    
    
    var body: some View {
        ZStack {
            Color.black
                .frame(width: .infinity, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("...Once")
                .font(Font.custom("Snell Roundhand", size: 60))
                .foregroundColor(.white)
                
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation(Animation
                                    .easeInOut(duration: 2)
                                    .repeatCount(1, autoreverses: true))
                    {
                        fadeInOut.toggle()
                    }
                        
                }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation(Animation
                                    .easeInOut(duration: 2)
                                    .repeatCount(1, autoreverses: true))
                    {
                        fadeInOut.toggle()
                        onceMove.toggle()
                    }
                }
                            
            }
                    
        
                
                .onAppear() {
                    if let mainViewMusic = NSDataAsset(name: "MainViewMusic") {
                        musicPlayer = try! AVAudioPlayer(data: mainViewMusic.data, fileTypeHint: "mp3")
                        musicPlayer.play()
                    }
                    if let thunder = NSDataAsset(name: "Thunder") {
                        thunderEffect = try! AVAudioPlayer(data: thunder.data, fileTypeHint: "mp3")
                    }
                }
                .opacity(fadeInOut ? 0 : 1)
                .offset(x: -130, y: onceMove ? -300: 400)
            
                
            
            Text("Upon")
                .font(Font.custom("Snell Roundhand", size: 60))
                .foregroundColor(.white)
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    withAnimation(Animation
                                    .easeInOut(duration: 2)
                                    .repeatCount(1, autoreverses: true))
                    {
                        fadeInOut2.toggle()
                    }
                        
                }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
                    withAnimation(Animation
                                    .easeInOut(duration: 2)
                                    .repeatCount(1, autoreverses: true))
                    {
                        fadeInOut2.toggle()
                        uponMove.toggle()
                    }
                        
                }
            }
                .opacity(fadeInOut2 ? 0 : 1)
                .offset(x: -50, y: uponMove ? -100: 400)
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            
            Text("a")
                .font(Font.custom("Snell Roundhand", size: 60))
                .foregroundColor(.white)
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
                    withAnimation(Animation
                                    .easeInOut(duration: 2)
                                    .repeatCount(1, autoreverses: true))
                    {
                        fadeInOut3.toggle()
                    }
                        
                }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                    withAnimation(Animation
                                    .easeInOut(duration: 2)
                                    .repeatCount(1, autoreverses: true))
                    {
                        fadeInOut3.toggle()
                        aMove.toggle()
                    }
                        
                }
            }
                .opacity(fadeInOut3 ? 0 : 1)
                .offset(x: 25, y: aMove ? 0 : 400)
            
            Text("Time...")
                .font(Font.custom("Snell Roundhand", size: 60))
                .foregroundColor(.white)
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                    withAnimation(Animation
                                    .easeInOut(duration: 2)
                                    .repeatCount(1, autoreverses: true))
                    {
                        fadeInOut4.toggle()
                    }
                        
                }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 11) {
                    withAnimation(Animation
                                    .easeInOut(duration: 2)
                                    .repeatCount(1, autoreverses: true))
                    {
                        fadeInOut4.toggle()
                    }
                        
                }
            }
                .opacity(fadeInOut4 ? 0 : 1)
                .offset(x: 100, y: 200)
            
            Text("Chapter 1")
                .font(Font.custom("NotoSerifKR-Light", size: 50))
                .foregroundColor(.white)
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 13) {
                    withAnimation(Animation
                                    .easeInOut(duration: 2)
                                    .repeatCount(1, autoreverses: true))
                    {
                        fadeInOut5.toggle()
                    }
                    
                }
                    
            }
                .opacity(fadeInOut5 ? 0 : 1)
                .offset(x: 0, y: 0)

                .onTapGesture {
                    withAnimation(Animation
                                    .easeInOut(duration: 1)
                                    .repeatCount(1, autoreverses: true))
                    {
                        fadeInOut5.toggle()
                        thunderEffect.play()
                        musicPlayer.setVolume(0, fadeDuration: 1)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            musicPlayer.stop()
                    }
                }
            }
        }
        
    }

}

struct FadeEffectView_Previews: PreviewProvider {
    static var previews: some View {
        FadeEffectView()
    }
}
