//
//  RotatedShapeDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct RotatedShapeDemoView: View {
    
    var body: some View {
        /*
         To be honest, I don't understand the benefit of this view.  A RotatedShape
         equivalent can be created from a Shape view with a rotate modifier.

         Perhaps the RotatedShape is more efficient?  Or maybe it is a relic from a
         previous era of code...
         */

        VStack {
            Spacer()
            RotatedShape(shape: Rectangle(), angle: Angle(degrees: 45))
                .frame(width: 100, height: 100)
            
            Spacer()
            
            Rectangle()
                .rotation(Angle(degrees: 45))
                .frame(width: 100, height: 100)
            Spacer()
        }
    }
}

struct RotatedShapeDemoView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedShapeDemoView()
    }
}
