//
//  ScrollViewDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ScrollViewDemoView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text("Horizontal")
            ScrollView(.horizontal) {                       //<-- scroll left/right
                LazyHStack {                                //<-- use HStack
                    ForEach(0x1f600...0x1f650, id: \.self) { value in
                        Text(emoji(value))
                            .font(.largeTitle)
                    }
                }
                .fixedSize()
            }
            
            Spacer()
            
            Text("Vertical")
            ScrollView {                                    //<-- scroll up/down
                LazyVStack {                                //<-- use VStack
                    ForEach(0x1f600...0x1f650, id: \.self) { value in
                        Text(emoji(value))
                            .font(.largeTitle)
                    }
                }
                .fixedSize()
            }
            Spacer()
        }
    }

    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}

struct ScrollViewDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewDemoView()
    }
}
