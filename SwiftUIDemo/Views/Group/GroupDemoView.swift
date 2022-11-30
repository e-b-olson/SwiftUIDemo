//
//  GroupDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct GroupDemoView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text("Groups allow for grouping of views.")
                Text("Modifiers applied to the Group get applied to all subviews in the Group!")
            }
            .multilineTextAlignment(.leading)
            .foregroundColor([.cyan, .mint, .indigo, .teal, .red, .purple].randomElement()!)
            .padding(8)
            .font(.title2)
        }
    }
}

struct GroupDemoView_Previews: PreviewProvider {
    static var previews: some View {
        /*
         My favorite use for the Group view is in the PreviewProvider.
         
         Xcode will create a new tab/window in the canvas (preview area)
         for each view in the Group.  Super useful!
         */
        Group {
            GroupDemoView()
                .previewDisplayName("Group Demo 1")
            GroupDemoView()
                .previewDisplayName("Group Demo 2")
            GroupDemoView()
                .previewDisplayName("Group Demo 3")
        }
    }
}
