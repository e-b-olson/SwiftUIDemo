//
//  ProgressViewDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ProgressViewDemoView: View {
    @State private var progress = 0.5
    
    var body: some View {
        ProgressView(value: progress)   //<-- NOTE: *NOT* a binding
        
        if progress >= 1.0 {
            Button("Reset", action: { progress = 0.0 })
        } else {
            Button("Add Progress", action: {
                // ProgressView value must not exceed the total max value!
                progress = min(progress + 0.05, 1.0)
            })
        }
    }
}

struct ProgressViewDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewDemoView()
    }
}
