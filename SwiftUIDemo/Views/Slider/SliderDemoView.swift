//
//  SliderDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct SliderDemoView: View {
    @State private var percent = 10.0
    @State private var isEditing = false
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/slider
         */
        VStack {
            Slider(
                value: $percent,
                in: 0...100,
                step: 0.5
            ) {
                Text("Speed")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            } onEditingChanged: { editing in
                isEditing = editing
            }
            .padding(.horizontal, 32)
            
            Text("\(percent, specifier: "%.1f")")
                .foregroundColor(isEditing ? .red : .blue)
        }
    }
}

struct SliderDemoView_Previews: PreviewProvider {
    static var previews: some View {
        SliderDemoView()
    }
}
