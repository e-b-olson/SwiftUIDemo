//
//  TextDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct TextDemoView: View {
    
    var body: some View {
        Text("Text views are used to display text :)")
            .multilineTextAlignment(.center)
    }
}

struct TextDemoView_Previews: PreviewProvider {
    static var previews: some View {
        TextDemoView()
    }
}
