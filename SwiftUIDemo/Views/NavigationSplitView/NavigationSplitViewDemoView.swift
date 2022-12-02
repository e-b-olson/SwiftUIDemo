//
//  NavigationSplitViewDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct NavigationSplitViewDemoView: View {
    @State private var selectedColor: Color?
    private let colors: [Color] = [.purple, .indigo, .blue, .cyan, .teal]
    
    
    var body: some View {
        /*
         NavigationSplitView is currently only available in iOS 16.0+
         */
        if #available(iOS 16, *) {
            NavigationSplitView {
                List(colors, id: \.self, selection: $selectedColor) { color in
                    Text(color.description)
                }
            } detail: {
                Text(selectedColor?.description ?? "No Selection")
                    .foregroundColor(selectedColor ?? .black)
            }
        } else {
            Text("Placeholder View")
            Text("(NavigationSplitView only available in iOS 16+)")
        }
    }
}

struct NavigationSplitViewDemoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewDemoView()
    }
}
