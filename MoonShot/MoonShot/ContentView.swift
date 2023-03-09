//
//  ContentView.swift
//  MoonShot
//
//  Created by Steve Hong on 2023/03/09.
//

import SwiftUI

struct ContentView: View {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    @State private var showingGrid = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                Group {
                    if showingGrid {
                        GridLayout(missions: missions, astronauts: astronauts)
                    } else {
                        ListLayout(missions: missions, astronauts: astronauts)
                    }
                }
                
            }
            .navigationTitle("MoonShot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button(showingGrid ? "Grid" : "List") {
                    showingGrid.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
