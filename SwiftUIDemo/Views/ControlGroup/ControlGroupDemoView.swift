//
//  ControlGroupDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ControlGroupDemoView: View {
    
    var body: some View {
        ControlGroup {
            Button("Button 1", action: {})
            Button("Button 2", action: {})
            Button("Button 3", action: {})
        }
    }
}

struct ControlGroupDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ControlGroupDemoView()
    }
}
