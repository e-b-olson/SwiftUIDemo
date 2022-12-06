//
//  SectionDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct SectionDemoView: View {
    
    var body: some View {
        // Section can be used in views like List, Picker, and Form
        List {
            Section {
                Text("This is in the first section")
                Text("So is this...")
            }
            
            Section("Second Section") {
                Text("This is in the second section")
            }
        }
    }
}

struct SectionDemoView_Previews: PreviewProvider {
    static var previews: some View {
        SectionDemoView()
    }
}
