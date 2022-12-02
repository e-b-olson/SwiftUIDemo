//
//  ListDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ListDemoView: View {
    
    var body: some View {
        List {
            Text("Placeholder View")
            Text("(ListDemoView)")
            Spacer()
            Text("This is list item 4")
        }
    }
}

struct ListDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ListDemoView()
    }
}
