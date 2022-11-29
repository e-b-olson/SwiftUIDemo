//
//  EditableCollectionContentDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct EditableCollectionContentDemoView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("An opaque wrapper view that adds editing capabilities to a row in a list.")
                .padding(16)
            Text("(You don’t use this type directly. Instead SwiftUI creates this type on your behalf.)")
                .padding(16)
        }
    }
}

struct EditableCollectionContentDemoView_Previews: PreviewProvider {
    static var previews: some View {
        EditableCollectionContentDemoView()
    }
}
