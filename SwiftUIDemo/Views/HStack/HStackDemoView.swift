//
//  HStackDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct HStackDemoView: View {
    
    var body: some View {
        HStack {
            Text("HStacks let you...")
                .padding(.leading, 10)
            Spacer()
            Divider()
            Spacer()
            Text("...align views horizontally.")
                .padding(.trailing, 10)
        }
    }
}

struct HStackDemoView_Previews: PreviewProvider {
    static var previews: some View {
        HStackDemoView()
    }
}
