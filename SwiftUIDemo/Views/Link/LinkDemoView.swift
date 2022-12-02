//
//  LinkDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct LinkDemoView: View {
    private let url = URL(string: "https://developer.apple.com/documentation/swiftui/link")!

    var body: some View {
        Link("Link to Apple Documentation", destination: url)
    }
}

struct LinkDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LinkDemoView()
    }
}
