//
//  OffsetShapeDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct OffsetShapeDemoView: View {
    
    var body: some View {
        /*
         To be honest, I don't understand the benefit of this view.  An OffsetShape
         equivalent can be created from a Shape view with an offset modifier.
         
         Perhaps the OffsetShape is more efficient?  Or maybe it is a relic from a
         previous era of code...
         */
        VStack {
            OffsetShape(shape: RoundedRectangle(cornerRadius: 12), offset: CGSize(width: 20, height: 20))
            RoundedRectangle(cornerRadius: 12)
                .offset(CGSize(width: 20, height: 20))
        }
    }
}

struct OffsetShapeDemoView_Previews: PreviewProvider {
    static var previews: some View {
        OffsetShapeDemoView()
    }
}
