//
//  ContentView.swift
//  observableobject-example2
//
//  Created by Steve Hong on 2023/02/17.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
                .font(.largeTitle)
            
            Button {
                self.userSettings.score += 1
            } label: {
                Text("Increment Score")
            }
            
            FancyScoreView()

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserSettings())
    }
}
