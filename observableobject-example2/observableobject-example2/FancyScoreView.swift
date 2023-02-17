//
//  FancyScoreView.swift
//  observableobject-example2
//
//  Created by Steve Hong on 2023/02/17.
//

import SwiftUI

struct FancyScoreView: View {
    
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
            
            Button {
                self.userSettings.score += 1
            } label: {
                Text("Increment Score")
            }
            .padding()
            .background(.green)

        }
        .padding()
        .background(.orange)
        
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView().environmentObject(UserSettings())
    }
}
