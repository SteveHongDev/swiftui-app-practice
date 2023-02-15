//
//  ContentView.swift
//  Hiking
//
//  Created by 홍성범 on 2023/02/13.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                NavigationLink {
                    HikeDetailView(hike: hike)
                } label: {
                    HikeCell(hike: hike)
                }
            }
            .navigationTitle("Hikings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(self.hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            
            VStack {
                Text(self.hike.name)
                Text(String(format: "%.2f miles", self.hike.miles))
            }
        }
    }
}
