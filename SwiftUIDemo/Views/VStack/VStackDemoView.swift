//
//  VStackDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct VStackDemoView: View {
    
    var body: some View {
        VStack {
            Spacer()
            Text("VStacks")
            Divider()
            Text("allow you")
            Text("to arrange views")
            Text("vertically")
            Spacer()
        }
    }
}

struct VStackDemoView_Previews: PreviewProvider {
    static var previews: some View {
        VStackDemoView()
    }
}
