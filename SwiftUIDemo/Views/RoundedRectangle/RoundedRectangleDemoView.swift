//
//  RoundedRectangleDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct RoundedRectangleDemoView: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 16, style: .continuous)
    }
}

struct RoundedRectangleDemoView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleDemoView()
    }
}
