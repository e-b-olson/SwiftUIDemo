//
//  DatePickerDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct DatePickerDemoView: View {
    @State var date: Date = Date()
    
    var body: some View {
        DatePicker("DatePicker Example", selection: $date, displayedComponents: [.date])
            .datePickerStyle(.graphical)
    }
}

struct DatePickerDemoView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerDemoView()
    }
}
