//
//  ContentView.swift
//  understanding-observableobject
//
//  Created by Steve Hong on 2023/02/17.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fancyTimer = FancyTimer()
    
    var body: some View {
        VStack {
            Text("\(self.fancyTimer.value)")
                .font(.largeTitle)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
