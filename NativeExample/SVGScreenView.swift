//
//  SVGScreenView.swift
//  NativeExample
//
//  Created by Patryk Mleczek on 10/2/25.
//

import SwiftUI
import SVGView

struct SVGScreenView: View {
    var body: some View {
        if let url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/f/f2/Yellow_square_happy_smiley.svg") {
            SVGView(contentsOf: url)
                .frame(width: 320, height: 180)
                .padding()
            Text("SVG")
                .font(.system(size: 32, weight: .bold))
        } else {
            Text("❌ Failed to load SVG")
                .font(.system(size: 32, weight: .bold))
        }
    }
}

#Preview {
    SVGScreenView()
}

