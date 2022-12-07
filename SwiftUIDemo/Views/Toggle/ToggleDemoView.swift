//
//  ToggleDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ToggleDemoView: View {
    @State private var toggleState: Bool = false
    
    var body: some View {
        Toggle("Enable cool service?", isOn: $toggleState)
            .padding(.horizontal, 32)
    }
}

struct ToggleDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleDemoView()
    }
}
