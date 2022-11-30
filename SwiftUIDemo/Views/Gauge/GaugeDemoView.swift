//
//  GaugeDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct GaugeDemoView: View {
    
    var body: some View {
        Text("Placeholder View")
        Text("(GaugeDemoView)")

        /*
         Gauge is only available in iOS 16+
         */
        /*
        Gauge(value: currentValue, in: minValue...maxValue) {
            Text("Gauge Demo")
        } currentValueLabel: {
            Text("Current Value")
        } minimumValueLabel: {
            Text("Min")
        } maximumValueLabel: {
            Text("Max")
        }
         */
    }
}

struct GaugeDemoView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeDemoView()
    }
}
