//
//  TextFieldDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct TextFieldDemoView: View {
    @State private var text: String = ""
    @State private var isValid: Bool = true
    @FocusState private var textFieldFocusState: Bool
    
    var body: some View {
        TextField(
                "Placeholder text...",
                text: $text
            )
            .focused($textFieldFocusState)
            .onSubmit {
                isValid = customValidation(text)
            }
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.secondary)
            .padding(32)

            Text("You wrote: " + text)
                .foregroundColor(isValid ? .blue : .red)
                .padding(.horizontal, 32)
    }
    
    func customValidation(_ input: String) -> Bool {
        return input.count > 3
    }
}

struct TextFieldDemoView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldDemoView()
    }
}
