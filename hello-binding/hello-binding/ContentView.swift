//
//  ContentView.swift
//  hello-binding
//
//  Created by Steve Hong on 2023/02/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    private func printName() {
        print(name)
    }
    
    var body: some View {
        VStack {
            Text(name)
            TextField("Enter text", text: $name)
                .padding(12)
            
            Button {
                printName()
            } label: {
                Text("Show name value")
            }
            
            Button {
                self.name = "Steve"
            } label: {
                Text("Change name Steve")
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
