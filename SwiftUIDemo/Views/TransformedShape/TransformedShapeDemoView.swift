//
//  TransformedShapeDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct TransformedShapeDemoView: View {
    private let transform: CGAffineTransform
    
    init() {
        if #available(iOS 16, *) {
            /*
             This does not currently work:
             "Ambiguous use of 'init(scale:horizontalShear:rotation:translation:)'"
             */
//            let transformComponents = CGAffineTransformComponents(
//                scale: CGSize(width: 50, height: 50),
//                horizontalShear: 0.0,
//                rotation: 0.0,
//                translation: CGVector(dx: 0, dy: 0))
//
//            transform = CGAffineTransform(transformComponents)
        }
        transform = CGAffineTransform(0.5, 0.25, 0.25, 0.5, 50, 20)
    }
    
    var body: some View {
        VStack {
            TransformedShape(shape: Rectangle(), transform: CGAffineTransform(scaleX: 0.5, y: 0.5))
                .padding(32)
            
            if #available(iOS 16, *) {
                TransformedShape(shape: Rectangle(),transform: transform)
            }
        }
    }
}

struct TransformedShapeDemoView_Previews: PreviewProvider {
    static var previews: some View {
        TransformedShapeDemoView()
    }
}
