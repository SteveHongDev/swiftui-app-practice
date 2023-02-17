//
//  observableobject_example2App.swift
//  observableobject-example2
//
//  Created by Steve Hong on 2023/02/17.
//

import SwiftUI

@main
struct observableobject_example2App: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserSettings())
        }
    }
}
