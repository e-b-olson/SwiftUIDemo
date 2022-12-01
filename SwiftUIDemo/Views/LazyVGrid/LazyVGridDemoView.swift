//
//  LazyVGridDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct LazyVGridDemoView: View {
    // Define your grid columns
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    /*
     This code is adapted from Apple's documentation
     https://developer.apple.com/documentation/swiftui/lazyvgrid
     */
    var body: some View {
        ScrollView { //<-- wrap your LazyVGrid in a vertical ScrollView
            LazyVGrid(columns: columns) {
                ForEach(0x1f600...0x1f650, id: \.self) { value in
                    Text(String(format: "%x", value))   //<-- column 0
                    Text(emoji(value))                  //<-- column 1
                        .font(.largeTitle)
                }
            }
        }
    }
    
    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}

struct LazyVGridDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridDemoView()
    }
}
