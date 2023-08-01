//
//  ItemDetail.swift
//  iDine
//
//  Created by Pintween on 2023/08/01.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    @EnvironmentObject var order: Order
    @State private var starImage = "star"
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()
            
            Button("Order This") {
                order.add(item: item)
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .font(.custom("Georgia", size: 20))
            
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button("Add to Favorites", systemImage: starImage) {
                if starImage == "star" {
                    starImage = "star.fill"
                } else {
                    starImage = "star"
                }
            }
            .tint(.yellow)
            .animation(.default, value: starImage)
        }
    }
}

#Preview {
    ItemDetail(item: MenuItem.example)
}
