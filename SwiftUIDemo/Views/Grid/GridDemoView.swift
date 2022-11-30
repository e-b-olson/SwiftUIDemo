//
//  GridDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct GridDemoView: View {
    
    var body: some View {
        /*
         This code is taken from Apple's documentation
         https://developer.apple.com/documentation/swiftui/grid
         
         Note: Grid is only available in iOS 16.0+
         */
        if #available(iOS 16, *) {
            Grid {
                GridRow {
                    Text("Hello")
                    Image(systemName: "globe")
                }
                GridRow {
                    Image(systemName: "hand.wave")
                    Text("World")
                }
            }
        } else {
            Text("Placeholder View")
            Text("(GridDemoView only available in iOS 16+)")
        }
    }
}

struct GridDemoView_Previews: PreviewProvider {
    static var previews: some View {
        GridDemoView()
    }
}
