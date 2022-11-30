//
//  GridRowDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct GridRowDemoView: View {
    
    var body: some View {
        /*
         The GridRow view should only be used inside of a Grid container view
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/gridrow
         
         Note: Grid is only available in iOS 16.0+
         */
        if #available(iOS 16, *) {
            Grid {
                GridRow {
                    Color.clear //<-- Use Color.clear to create an empty cell
                        .gridCellUnsizedAxes([.horizontal, .vertical])
                    ForEach(1..<4) { column in
                        Text("C\(column)")
                    }
                }
                ForEach(1..<4) { row in
                    GridRow {
                        Text("R\(row)")
                        ForEach(1..<4) { _ in
                            Circle().foregroundStyle([.mint, .cyan, .indigo, .teal].randomElement()!)
                        }
                    }
                }
            }
        } else {
            Text("Placeholder View")
            Text("(GridRowDemoView only available in iOS 16+)")
        }
    }
}

struct GridRowDemoView_Previews: PreviewProvider {
    static var previews: some View {
        GridRowDemoView()
    }
}
