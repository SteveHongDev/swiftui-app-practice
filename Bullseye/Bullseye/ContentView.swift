//
//  ContentView.swift
//  Bullseye
//
//  Created by 홍성범 on 2022/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            Text("89")
                .kerning(-1.0)
                .fontWeight(.black)
                .font(.largeTitle)
            HStack {
                Text("1")
                    .font(.headline)
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .font(.headline)
            }
            Button {
                
            } label: {
                Text("Hit me!")
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
    }
}
