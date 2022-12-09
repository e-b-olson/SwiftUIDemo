//
//  DefaultDateProgressLabelDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct DefaultDateProgressLabelDemoView: View {
    @State private var timerDateRange = Date()...Date().addingTimeInterval(30)
    
    var body: some View {
        /*
         As far as I can tell, DefaultDateProgressLabel is an internal
         type (used by ProgressView).  I don't think you would ever
         explicitly create a DefaultDateProgressLabel view yourself.
         
         Please see the Apple Documentation for more info:
         https://developer.apple.com/documentation/swiftui/defaultdateprogresslabel
         */
        if #available(iOS 16, *) {
            ProgressView(timerInterval: timerDateRange) {
                Text("Timer")
            }
            .padding(32)
            
            Button("Reset", action: {
                timerDateRange = Date()...Date().addingTimeInterval(30)
            })
        } else {
            Text("Placeholder View")
            Text("(DefaultDateProgressLabelDemoView)")
        }
    }
}

struct DefaultDateProgressLabelDemoView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultDateProgressLabelDemoView()
    }
}
