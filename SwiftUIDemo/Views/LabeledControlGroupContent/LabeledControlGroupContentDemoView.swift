//
//  LabeledControlGroupContentDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct LabeledControlGroupContentDemoView: View {
    
    var body: some View {
        /*
         This text is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/labeledcontrolgroupcontent
         */
        VStack(alignment: .leading) {
            Text("A view that represents the body of a control group with a specified label.")
                .padding(16)
            Text("(You don’t create this type directly. SwiftUI creates it when you build a ControlGroup.)")
                .padding(16)
        }
    }
}

struct LabeledControlGroupContentDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LabeledControlGroupContentDemoView()
    }
}
