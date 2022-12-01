//
//  LazyHGridDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct LazyHGridDemoView: View {
    // Define your grid rows
    let rows = [GridItem(.fixed(30)), GridItem(.fixed(30))]
    
    /*
     This code is adapted from Apple's documentation
     https://developer.apple.com/documentation/swiftui/lazyhgrid
     */
    var body: some View {
        ScrollView(.horizontal) { //<-- wrap your LazyHGrid in a ScrollView(.horizontal)
            LazyHGrid(rows: rows) {
                ForEach(0x1f600...0x1f650, id: \.self) { value in
                    Text(String(format: "%x", value))   //<-- row 0
                    Text(emoji(value))                  //<-- row 1
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

struct LazyHGridDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridDemoView()
    }
}
