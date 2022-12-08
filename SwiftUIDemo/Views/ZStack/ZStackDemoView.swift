//
//  ZStackDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ZStackDemoView: View {
    @State private var yOffset: Double = 0
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color.cyan)
                .scaleEffect(0.3)
            
            Text("ZStacks")
                .offset(x: 0, y: yOffset * -1)
            Text("allow you to")
                .offset(x: 0, y: yOffset * 0)
            Text("layer views in the z-plane")
                .offset(x: 0, y: yOffset * 1)
            Text("(like a deck of cards)")
                .offset(x: 0, y: yOffset * 2)
        }
        
        Slider(value: $yOffset, in: 0...32, label: { Text("Offset")} )
            .padding(.horizontal, 32)
    }
}

struct ZStackDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackDemoView()
    }
}
