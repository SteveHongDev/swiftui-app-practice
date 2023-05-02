//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by 홍성범 on 2023/05/02.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
