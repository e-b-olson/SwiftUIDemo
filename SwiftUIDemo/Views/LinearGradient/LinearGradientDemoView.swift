//
//  LinearGradientDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct LinearGradientDemoView: View {
    
    var body: some View {
        LinearGradient(colors: [.purple, .indigo, .cyan, .teal],
                       startPoint: UnitPoint(x: 0, y: 0.2),
                       endPoint: UnitPoint(x: 0.9, y: 1))
    }
}

struct LinearGradientDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientDemoView()
    }
}
