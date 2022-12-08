//
//  VSplitViewDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct VSplitViewDemoView: View {
    
    var body: some View {
        /*
         Note: VSplitView is only available in _macOS_ (10.15+)
         */
        GroupBox {
            Text("VSplitView is currently only available in macOS.")
        } label: {
            Label("VSplitView", systemImage: "info.circle")
                .foregroundColor(Color.blue)
        }
        .padding(12)
    }
}

struct VSplitViewDemoView_Previews: PreviewProvider {
    static var previews: some View {
        VSplitViewDemoView()
    }
}
