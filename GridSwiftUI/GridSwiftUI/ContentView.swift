//
//  ContentView.swift
//  GridSwiftUI
//
//  Created by Steve Hong on 2023/02/16.
//

import SwiftUI

struct ContentView: View {
    
    let animals = ["🐈","🐆","🦌","🦒","🦏","🐄","🐀","🦩","🐄"]
    @State private var sliderValue: CGFloat = 1
    
    
    
    var body: some View {
        
        let columns: [GridItem] = Array(repeating: .init(.flexible()), count: Int(self.sliderValue))
        
        return NavigationView {
            
            VStack {
                Slider(value: $sliderValue, in: 1...9, step: 1)
                
                Text(String(format: "%.0f", self.sliderValue))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(self.animals, id: \.self) { animal in
                            Text(animal)
                                .font(.system(size: 200 / self.sliderValue))
                        }
                    }
                }
            }
            
            .navigationTitle("Animals")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
