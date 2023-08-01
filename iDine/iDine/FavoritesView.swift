//
//  FavoritesView.swift
//  iDine
//
//  Created by Pintween on 2023/08/01.
//

import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject var favorites: Favorites
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(favorites.items) { item in
                    NavigationLink(value: item) {
                        ItemRow(item: item)
                    }
                    .navigationDestination(for: MenuItem.self) { item in
                        ItemDetail(item: item)
                    }
                }
            }
            .navigationTitle("Favorites")
            .listStyle(.grouped)
        }
    }
}

#Preview {
    FavoritesView()
}
