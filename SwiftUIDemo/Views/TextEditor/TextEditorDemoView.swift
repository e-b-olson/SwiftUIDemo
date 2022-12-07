//
//  TextEditorDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct TextEditorDemoView: View {
    @State private var text: String = "A text editor view allows you to display and edit multiline, scrollable text in your app’s user interface."
    
    var body: some View {
        TextEditor(text: $text)
    }
}

struct TextEditorDemoView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorDemoView()
    }
}
