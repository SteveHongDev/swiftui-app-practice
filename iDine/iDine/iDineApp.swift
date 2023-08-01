//
//  iDineApp.swift
//  iDine
//
//  Created by Pintween on 2023/08/01.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
