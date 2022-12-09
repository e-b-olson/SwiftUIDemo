//
//  DefaultShareLinkLabelDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct DefaultShareLinkLabelDemoView: View {
    
    var body: some View {
        /*
         From the Apple Documentation:
         
         "You don’t use this type directly.
         Instead, ShareLink uses it automatically depending on
         how you create a share link."
         
         https://developer.apple.com/documentation/swiftui/defaultsharelinklabel
         */
        GroupBox {
            VStack(alignment: .leading) {
                Text("You don’t use this type directly.")
                Divider()
                    .padding(.horizontal, 32)
                Text("Instead, ShareLink uses it automatically depending on how you create a share link.")
            }
        } label: {
            Label("DefaultShareLinkLabel", systemImage: "info.circle")
                .foregroundColor(Color.blue)
                .padding(.bottom, 12)
        }
        .padding(12)
    }
}

struct DefaultShareLinkLabelDemoView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultShareLinkLabelDemoView()
    }
}
