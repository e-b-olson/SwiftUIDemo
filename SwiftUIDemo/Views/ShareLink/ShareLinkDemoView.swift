//
//  ShareLinkDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ShareLinkDemoView: View {
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/sharelink
         
         Note: ShareLink is currently only available in iOS 16.0+
         */
        if #available(iOS 16, *) {
            ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!) {
                Label("Share", systemImage: "square.and.arrow.up")
            }
        } else {
            Text("Placeholder View")
            Text("(ShareLinkDemoView only available in iOS 16+)")
        }
    }
}

struct ShareLinkDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ShareLinkDemoView()
    }
}
