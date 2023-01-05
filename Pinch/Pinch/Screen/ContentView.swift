//
//  ContentView.swift
//  Pinch
//
//  Created by 홍성범 on 2023/01/05.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    
    // MARK: - FUNCTION
    
    // MARK: - CONTENT
    
    var body: some View {
        VStack {
            NavigationStack {
                ZStack {
                    // MARK: - PAGE IMAGE
                    Image("magazine-front-cover")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .padding()
                        .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                        .opacity(isAnimating ? 1 : 0)
                        .animation(.linear(duration: 1), value: isAnimating)
                        .scaleEffect(imageScale)
                    // MARK: - 1. TAP GESTURE
                        .onTapGesture(count: 2) {
                            if imageScale == 1 {
                                withAnimation(.spring()) {
                                    imageScale = 5
                                }
                            } else {
                                withAnimation(.spring()) {
                                    imageScale = 1
                                }
                            }
                        }
                } //: ZSTACK
                .navigationTitle("Pinch & Zoom")
                .navigationBarTitleDisplayMode(.inline)
                .onAppear {
                    isAnimating = true
                }
            } //: NAVIGATION
        }
        .padding()
        
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
