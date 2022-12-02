//
//  NavigationStackDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct NavigationStackDemoView: View {
    private let colors: [Color] = [.purple, .indigo, .blue, .cyan, .teal]
    
    var body: some View {
        /*
         NavigationStack is currently only available in iOS 16.0+
         */
        if #available(iOS 16, *) {
            NavigationStack {
                Text("NavigationStack Base View")
                List(colors, id: \.self) { color in
                    NavigationLink(color.description, value: color)
                }
                .navigationDestination(for: Color.self) { color in
                    Text(color.description)
                        .foregroundColor(color)
                }
            }
        } else {
            Text("Placeholder View")
            Text("(NavigationStack only available in iOS 16+)")
        }
    }
}

struct NavigationStackDemoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackDemoView()
    }
}
