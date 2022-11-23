//
//  AnyViewDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct AnyViewDemoView: View {
    
    var body: some View {
        Text("AnyView is used for type-erasure.  It is not a concrete view type.")
            .multilineTextAlignment(.center)
    }
}

struct AnyViewDemoView_Previews: PreviewProvider {
    static var previews: some View {
        AnyViewDemoView()
    }
}
