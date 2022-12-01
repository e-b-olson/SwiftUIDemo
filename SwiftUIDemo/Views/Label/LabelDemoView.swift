//
//  LabelDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct LabelDemoView: View {
    
    var body: some View {
        Label("Labels have an icon and some text.", systemImage: "info.circle")
            .foregroundColor(Color.blue)
            .font(.title3)
    }
}

struct LabelDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LabelDemoView()
    }
}
