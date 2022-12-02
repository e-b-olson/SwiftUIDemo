//
//  MenuButtonDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct MenuButtonDemoView: View {
    
    var body: some View {
        /*
         Note: MenuButton is only available in macOS.
         AND it is now deprecated...so...
         */
        GroupBox {
            Text("MenuButton is only available in macOS.  And it is now deprecated.")
        } label: {
            Label("MenuButton", systemImage: "info.circle")
                .foregroundColor(Color.blue)
        }
        .padding(12)
    }
}

struct MenuButtonDemoView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonDemoView()
    }
}
