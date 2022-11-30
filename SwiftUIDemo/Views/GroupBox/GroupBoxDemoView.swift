//
//  GroupBoxDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct GroupBoxDemoView: View {
    
    var body: some View {
        GroupBox(content: {
            Text("The GroupBox view is used to visually distinguish the wrapped views from the rest of your user interface.")
                .padding(10)
            Button("Okay", action: { })
        }, label: {
            Label("GroupBox Example", systemImage: "info.circle")
                .foregroundColor(Color.blue)
        })
    }
}

struct GroupBoxDemoView_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxDemoView()
    }
}
