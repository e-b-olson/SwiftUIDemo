//
//  ButtonDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ButtonDemoView: View {
    
    var body: some View {
        Button(action: {}, label: { Text("This is a Button!") })
    }
}

struct ButtonDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDemoView()
    }
}
