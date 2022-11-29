//
//  DisclosureGroupDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct DisclosureGroupDemoView: View {
    @State private var isExpanded: Bool = false
    
    var body: some View {
        DisclosureGroup("Disclosure Group", isExpanded: $isExpanded) {
            Text("You opened the Disclosure Group!")
        }
    }
}

struct DisclosureGroupDemoView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupDemoView()
    }
}
