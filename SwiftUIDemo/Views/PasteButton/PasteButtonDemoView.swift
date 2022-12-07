//
//  PasteButtonDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct PasteButtonDemoView: View {
    @State private var pastedText: String = ""
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/pastebutton
         
         Note: PasteButton is currently only available in iOS 16.0+
         */
        if #available(iOS 16, *) {
            HStack {
                PasteButton(payloadType: String.self) { strings in
                    pastedText = strings[0]
                }
                Divider()
                Text(pastedText)
                Spacer()
            }
        } else {
            Text("Placeholder View")
            Text("(PasteButton only available in iOS 16+)")
        }
    }
}

struct PasteButtonDemoView_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonDemoView()
    }
}
