//
//  ContentView.swift
//  LazyGridsInSwiftUI
//
//  Created by Steve Hong on 2023/02/16.
//

import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    
    private func headerView(_ index: Int) -> some View {
        Text("Section \(index)")
            .padding()
            .foregroundColor(.white)
            .font(.title)
            .frame(maxWidth: .infinity)
            .background(.blue)
    }
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10, pinnedViews: [.sectionHeaders]) {
                    
                    ForEach(1..<11) { index in
                        
                        Section {
                            ForEach(1..<40) { _ in
                                Rectangle()
                                    .fill(.red)
                                    .scaledToFit()
                            }
                        } header: {
                            self.headerView(index)
                        }

                        
                        
                        
                    }
                }
                .padding()
            }
            
            .navigationTitle("Pinned Views")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
