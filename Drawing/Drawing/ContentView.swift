//
//  ContentView.swift
//  Drawing
//
//  Created by Steve Hong on 2023/03/10.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image("singapore"), scale: 0.1), lineWidth: 20)
            .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
