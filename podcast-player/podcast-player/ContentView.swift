//
//  ContentView.swift
//  podcast-player
//
//  Created by Steve Hong on 2023/02/17.
//

import SwiftUI

struct ContentView: View {
    
    let episode = Episode(name: "Mac Weekly", track: "WWDC 2023")
    
    @State private var isPlaying = false
    
    var body: some View {
        VStack(spacing: 5) {
            
            Text(self.episode.name)
                .font(.title)
                .foregroundColor(self.isPlaying ? .green : .black)
            Text(self.episode.track)
                .foregroundColor(.secondary)
            
            PlayButton(isPlaying: $isPlaying)
        }
        .padding()
    }
}

struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        
        Button {
            self.isPlaying.toggle()
        } label: {
            Text("Play")
        }
        .padding(12)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
