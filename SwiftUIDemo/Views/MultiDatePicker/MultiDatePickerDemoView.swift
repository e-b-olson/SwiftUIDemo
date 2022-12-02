//
//  MultiDatePickerDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct MultiDatePickerDemoView: View {
    @State private var dates: Set<DateComponents> = []
    
    var body: some View {
        if #available(iOS 16, *) {
            MultiDatePicker("Select some dates", selection: $dates)
        } else {
            Text("Placeholder View")
            Text("(MultiDatePicker only available in iOS 16+)")
        }
    }
}

struct MultiDatePickerDemoView_Previews: PreviewProvider {
    static var previews: some View {
        MultiDatePickerDemoView()
    }
}
