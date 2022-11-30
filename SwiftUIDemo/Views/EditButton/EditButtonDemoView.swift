//
//  EditButtonDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct EditButtonDemoView: View {
    
    @State private var bountyHunters = [
        "4-LOM",
        "Boba Fett",
        "Bossk",
        "Dengar",
        "IG-88",
        "Zuckuss"
    ]
    
    var body: some View {
        List {
            ForEach(bountyHunters, id: \.self) { bountyHunter in
                Text(bountyHunter)
            }
            /*
             Try adding/removing the `onDelete` and `onMove` modifiers to
             see what happens.
             */
            .onDelete { bountyHunters.remove(atOffsets: $0) }
            .onMove { bountyHunters.move(fromOffsets: $0, toOffset: $1) }
        }
        .toolbar {
            /*
             The EditButton toggles the `editMode` of the environment.

             Different controls will be displayed in `editMode` depending
             on whether or not the `onMove` or `onDelete` modifiers are
             applied to the editable view.
             */
            EditButton()
        }

    }
}

struct EditButtonDemoView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonDemoView()
    }
}
