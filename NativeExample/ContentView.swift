//
//  ContentView.swift
//  NativeExample
//
//  Created by Patryk Mleczek on 10/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                HomeView()
            }
            
            Tab("SVG", systemImage: "pencil.and.outline") {
                SVGScreenView()
            }
        }
    }
}


#Preview {
    ContentView()
}
