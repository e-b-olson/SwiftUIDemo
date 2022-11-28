//
//  ContainerRelativeShapeDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ContainerRelativeShapeDemoView: View {
    
//    init() {
//        UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
//    }
    
    var body: some View {
        ContainerRelativeShape()
            .inset(by: 32)
    }
}

struct ContainerRelativeShapeDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerRelativeShapeDemoView()
    }
}
