//
//  FavoritesView.swift
//  iDine
//
//  Created by Pintween on 2023/08/01.
//

import SwiftUI

struct FavoritesView: View {
    
    @ObservedObject var favorites: Favorites
    
    var body: some View {
        Text("Favorites View")
    }
}

#Preview {
    FavoritesView()
}
