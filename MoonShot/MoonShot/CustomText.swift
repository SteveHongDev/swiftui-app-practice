//
//  CustomText.swift
//  MoonShot
//
//  Created by Steve Hong on 2023/03/09.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        print("NEW CUSTOMTEXT")
        self.text = text
    }
}

//struct CustomText_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomText()
//    }
//}
