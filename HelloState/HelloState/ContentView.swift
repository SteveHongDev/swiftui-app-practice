//
//  ContentView.swift
//  HelloState
//
//  Created by Steve Hong on 2023/02/17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = "John"
    
    var body: some View {
        VStack {
            Text("Hello, \(name)!")
                .font(.title)
            
            Button {
                self.name = "Chris"
            } label: {
                Text("Change Name")
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
