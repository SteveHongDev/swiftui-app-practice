//
//  ItemRow.swift
//  iDine
//
//  Created by Pintween on 2023/08/01.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                // Xcode 15에서의 변화점 1 - overlay 표현 방법 변경
                .overlay {
                    Circle().stroke(.gray, lineWidth: 2)
                }
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundStyle(.white)
            }
        }
    }
}

// Xcode 15에서의 변화점 2 - Preview 코드의 간단화
#Preview {
    ItemRow(item: MenuItem.example)
}
