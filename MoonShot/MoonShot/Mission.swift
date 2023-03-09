//
//  Mission.swift
//  MoonShot
//
//  Created by Steve Hong on 2023/03/09.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable { // nested struct
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    var image: String {
        "apollo\(id)"
    }
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
