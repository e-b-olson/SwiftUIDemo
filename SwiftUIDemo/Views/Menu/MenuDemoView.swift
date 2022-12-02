//
//  MenuDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct MenuDemoView: View {
    
    var body: some View {
        Menu("Menu") {
            Button("Cut", action: {})
            Button("Copy", action: {})
            Button("Paste", action: {})
            Menu("Additional Options") {
                Button("Save", action: {})
                Button("Save as...", action: {})
                Button("Close", action: {})
            }
        }
    }
}

struct MenuDemoView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDemoView()
    }
}
