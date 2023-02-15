//
//  HikeDetailView.swift
//  Hiking
//
//  Created by Seongbeom Hong on 2023/02/15.
//

import SwiftUI

struct HikeDetailView: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        
        
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .padding()
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Text(hike.name)
            Text(String(format: "%.2f miles", hike.miles))
        }
        .navigationTitle(Text(hike.name))
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct HikeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetailView(hike: Hike(name: "Name", imageURL: "tam", miles: 10.0))
    }
}
