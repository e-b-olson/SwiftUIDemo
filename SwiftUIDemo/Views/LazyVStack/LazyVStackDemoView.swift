//
//  LazyVStackDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct LazyVStackDemoView: View {
    /*
     Text adapted from Apple's documentation
     https://developer.apple.com/documentation/swiftui/lazyvstack
     */
    private let text = "The stack is 'lazy,' in that the stack view doesn’t create items until it needs to render them onscreen."
    
    var body: some View {
        VStack {
            Text("A view that arranges its children in a line that grows vertically, creating items only as needed.")
                .padding(12)
            
            ScrollView { //<-- wrap your LazyVStack in a vertical ScrollView
                LazyVStack {
                    ForEach(Array(text.split(separator: " ").enumerated()), id: \.offset) { offset, item in
                        Text(item)
                            .padding(5)
                            .border([.cyan, .blue, .indigo, .purple, .teal].randomElement()!)
                    }
                }
            }
            .padding(.horizontal, 12)
        }
    }
}

struct LazyVStackDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackDemoView()
    }
}
