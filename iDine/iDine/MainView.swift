//
//  MainView.swift
//  iDine
//
//  Created by Pintween on 2023/08/01.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(Order())
}
