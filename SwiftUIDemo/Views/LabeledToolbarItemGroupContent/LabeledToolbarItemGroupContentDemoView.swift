//
//  LabeledToolbarItemGroupContentDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct LabeledToolbarItemGroupContentDemoView: View {
    
    var body: some View {
        /*
         This text is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/labeledtoolbaritemgroupcontent
         */
        VStack(alignment: .leading) {
            Text("A view that represents the view of a toolbar item group with a specified label.")
                .padding(16)
            Text("(You don’t create this type directly. SwiftUI creates it when you build a ToolbarItemGroup.)")
                .padding(16)
            Text("(LabeledToolbarItemGroupContent only available in iOS 16+)")
                .padding(16)
        }
    }
}

struct LabeledToolbarItemGroupContentDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LabeledToolbarItemGroupContentDemoView()
    }
}
