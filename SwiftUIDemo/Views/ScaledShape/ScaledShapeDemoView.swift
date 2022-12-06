//
//  ScaledShapeDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ScaledShapeDemoView: View {
    
    var body: some View {
        /*
         To be honest, I don't understand the benefit of this view.  A ScaledShape
         equivalent can be created from a Shape view with a scaleEffect modifier.

         Perhaps the ScaledShape is more efficient?  Or maybe it is a relic from a
         previous era of code...
         */

        VStack {
            Spacer()
            ScaledShape(shape: Rectangle(), scale: CGSize(width: 0.5, height: 0.5))
            
            Spacer()
            
            Rectangle()
                .scaleEffect(CGSize(width: 0.5, height: 0.5))
            Spacer()
        }
    }
}

struct ScaledShapeDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ScaledShapeDemoView()
    }
}
