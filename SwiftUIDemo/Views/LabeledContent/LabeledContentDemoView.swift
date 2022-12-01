//
//  LabeledContentDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct LabeledContentDemoView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/labeledcontent
         
         Note: LabeledContent is only available in iOS 16.0+
         */
        if #available(iOS 16, *) {
            Form {
                LabeledContent("Labeled Content") {
                    CustomSelectionValueView(value: $selection)
                }
                Picker("Selected Value", selection: $selection) {
                    Text("Option 1").tag(1)
                    Text("Option 2").tag(2)
                }
            }
        } else {
            Text("Placeholder View")
            Text("(LabeledContent only available in iOS 16+)")
        }
    }
}

struct CustomSelectionValueView: View {
    @Binding var value: Int
    var body: some View {
        Text("\(value)")
    }
}

struct LabeledContentDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LabeledContentDemoView()
    }
}
