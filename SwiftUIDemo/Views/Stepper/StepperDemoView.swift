//
//  StepperDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct StepperDemoView: View {
    @State private var selectedColorIndex = 0
    @State private var isEditing = false
    private let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple]
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/stepper
         */

        Stepper {
            Label("Select Color", systemImage: "eyedropper.halffull")
        } onIncrement: {
            selectedColorIndex += 1
            selectedColorIndex = min(selectedColorIndex, colors.count - 1)
        } onDecrement: {
            selectedColorIndex -= 1
            selectedColorIndex = max(selectedColorIndex, 0)
        } onEditingChanged: { value in
            isEditing = value
        }
        .padding(32)
        .background(colors[selectedColorIndex])
        .opacity(isEditing ? 0.5 : 1.0)
    }
}

struct StepperDemoView_Previews: PreviewProvider {
    static var previews: some View {
        StepperDemoView()
    }
}
