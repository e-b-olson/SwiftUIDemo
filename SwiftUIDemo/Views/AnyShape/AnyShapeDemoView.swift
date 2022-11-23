//
//  AnyShapeDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct AnyShapeDemoView: View {
    
    var body: some View {
        Text("AnyShape is used for type-erasure.  It is not a concrete view type.")
            .multilineTextAlignment(.center)
    }
}

struct AnyShapeDemoView_Previews: PreviewProvider {
    static var previews: some View {
        AnyShapeDemoView()
    }
}
