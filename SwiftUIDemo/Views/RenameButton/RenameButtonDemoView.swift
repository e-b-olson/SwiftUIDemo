//
//  RenameButtonDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct RenameButtonDemoView: View {
    @State private var text = ""
    @FocusState private var isFocused: Bool
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/renamebutton
         
         Note: RenameButton is currently only available in iOS 16.0+
         */
        if #available(iOS 16, *) {
            VStack {
                TextField(text: $text) {
                    Text("Prompt")
                }
                .focused($isFocused)
                
                if text.count > 0 {
                    RenameButton()
                        .renameAction { isFocused = true }
                } else {
                    // No rename action?  The button will be disabled.
                    RenameButton()
                }
            }
            
        } else {
            Text("Placeholder View")
            Text("(RenameButtonDemoView only available in iOS 16+)")
        }
    }
}

struct RenameButtonDemoView_Previews: PreviewProvider {
    static var previews: some View {
        RenameButtonDemoView()
    }
}
