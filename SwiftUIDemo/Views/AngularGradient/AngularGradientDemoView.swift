//
//  AngularGradientDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct AngularGradientDemoView: View {
    
    var body: some View {
        AngularGradient(colors: [Color.black, Color.blue], center: .bottomLeading)
    }
}

struct AngularGradientDemoView_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientDemoView()
    }
}
