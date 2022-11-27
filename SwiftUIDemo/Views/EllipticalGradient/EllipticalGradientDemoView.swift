//
//  EllipticalGradientDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct EllipticalGradientDemoView: View {
    
    var body: some View {
        EllipticalGradient(gradient: .init(colors: [.blue, .green]))
    }
}

struct EllipticalGradientDemoView_Previews: PreviewProvider {
    static var previews: some View {
        EllipticalGradientDemoView()
    }
}
