//
//  LazyHStackDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct LazyHStackDemoView: View {
    /*
     Text adapted from Apple's documentation
     https://developer.apple.com/documentation/swiftui/lazyhstack
     */
    private let text = "The stack is 'lazy,' in that the stack view doesn’t create items until it needs to render them onscreen."
    
    var body: some View {
        VStack {
            Text("A view that arranges its children in a line that grows horizontally, creating items only as needed.")
                .padding(12)
            
            ScrollView(.horizontal) { //<-- wrap your LazyHStack in a ScrollView(.horizontal)
                LazyHStack {
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

struct LazyHStackDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStackDemoView()
    }
}
