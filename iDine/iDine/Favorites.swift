//
//  Favorites.swift
//  iDine
//
//  Created by Pintween on 2023/08/01.
//

import SwiftUI

class Favorites: ObservableObject {
    @Published var items = [MenuItem]()

    func add(item: MenuItem) {
        items.append(item)
    }

    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
