//
//  TabViewDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct TabViewDemoView: View {
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/tabview
         */
        
        TabView {
            Text("Received View Example")
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            Text("Sent View Example")
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            Text("Account View Example")
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct TabViewDemoView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemoView()
    }
}
