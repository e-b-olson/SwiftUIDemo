//
//  CanvasDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct CanvasDemoView: View {
    
    var body: some View {
        Canvas { context, size in
            context.stroke(
                Path(ellipseIn: CGRect(origin: .zero, size: size)),
                with: .color(.green),
                lineWidth: 4)
        }
        .frame(width: 300, height: 200)
        .border(Color.blue)
    }
}

struct CanvasDemoView_Previews: PreviewProvider {
    static var previews: some View {
        CanvasDemoView()
    }
}
