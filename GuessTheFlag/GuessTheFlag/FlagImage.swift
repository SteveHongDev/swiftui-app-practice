//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Steve Hong on 2023/02/25.
//

import SwiftUI

struct FlagImage: View {
    
    var name: String
    
    var body: some View {
        Image(name)
            .clipShape(Capsule())
            .shadow(radius: 5)
    }
}

struct FlagImage_Previews: PreviewProvider {
    static var previews: some View {
        FlagImage(name: "France")
    }
}
