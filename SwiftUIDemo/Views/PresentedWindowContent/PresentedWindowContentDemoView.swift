//
//  PresentedWindowContentDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct PresentedWindowContentDemoView: View {
    
    var body: some View {
        /*
         This text is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/presentedwindowcontent
         */
        VStack(alignment: .leading) {
            Group {
                Text("A view that represents the content of a presented window.")
                Text("(You don’t create this type directly. WindowGroup creates values for you.)")
                Text("(PresentedWindowContent only available in iOS 16+)")
            }
            .padding(16)
        }
    }
}

struct PresentedWindowContentDemoView_Previews: PreviewProvider {
    static var previews: some View {
        PresentedWindowContentDemoView()
    }
}
