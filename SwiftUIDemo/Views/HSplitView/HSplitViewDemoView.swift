//
//  HSplitViewDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct HSplitViewDemoView: View {
    
    var body: some View {
        /*
         Note: HSplitView is only available in macOS (10.15+)
         */
        GroupBox {
            Text("HSplitView is currently only available in macOS.")
        } label: {
            Label("HSplitView", systemImage: "info.circle")
                .foregroundColor(Color.blue)
        }
        .padding(12)
    }
}

struct HSplitViewDemoView_Previews: PreviewProvider {
    static var previews: some View {
        HSplitViewDemoView()
    }
}
