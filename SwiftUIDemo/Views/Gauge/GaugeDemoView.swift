//
//  GaugeDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct GaugeDemoView: View {
    @State private var currentValue = 25.0
    private let minValue = 0.0
    private let maxValue = 100.0
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/gauge
         
         Note: PasteButton is currently only available in iOS 16.0+
         */
        if #available(iOS 16, *) {
            Gauge(value: currentValue, in: minValue...maxValue) {
                Text("Gauge Demo")
            } currentValueLabel: {
                Text("Current Value")
            } minimumValueLabel: {
                Text("Min")
            } maximumValueLabel: {
                Text("Max")
            }
            .padding(.horizontal, 32)
        } else {
            Text("Placeholder View")
            Text("(Gauge only available in iOS 16+)")
        }
    }
}

struct GaugeDemoView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeDemoView()
    }
}
