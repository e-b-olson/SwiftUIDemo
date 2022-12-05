//
//  RadialGradientDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct RadialGradientDemoView: View {
    
    var body: some View {
        RadialGradient(
            colors: [.purple, .indigo, .blue, .cyan, .teal],
            center: UnitPoint(x: 0.5, y: 0.5),
            startRadius: 0.0,
            endRadius: 500.0
        )
    }
}

struct RadialGradientDemoView_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradientDemoView()
    }
}
