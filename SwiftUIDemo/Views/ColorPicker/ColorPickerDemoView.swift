//
//  ColorPickerDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ColorPickerDemoView: View {
    @State var color: Color = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    var body: some View {
        ColorPicker("ColorPicker Example", selection: $color)
    }
}

struct ColorPickerDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerDemoView()
    }
}
