//
//  ContentView.swift
//  Bullseye
//
//  Created by 홍성범 on 2022/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            Text(String(game.target))
                .kerning(-1.0)
                .fontWeight(.black)
                .font(.largeTitle)
            HStack {
                Text("1")
                    .font(.headline)
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .font(.headline)
            }
            
            Button {
                print("Hello, SwiftUI!")
                self.alertIsVisible = true
            } label: {
                Text("Hit me!")
            }
            .alert("Hello there!", isPresented: $alertIsVisible) {
                Button("Awesome!") { }
            } message: {
                let roundedValue: Int = Int(self.sliderValue.rounded())
                Text("The slider's value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round.")
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
