//
//  PathDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct PathDemoView: View {
    
    var body: some View {
        Path { path in
            // external path
            path.move(to: CGPoint(x: 22, y: 572))       //<-- start point
            path.addQuadCurve(to: CGPoint(x: 195, y: 20), control: CGPoint(x: 91, y: 229))
            path.addQuadCurve(to: CGPoint(x: 370, y: 527), control: CGPoint(x: 295, y: 204))
            path.addQuadCurve(to: CGPoint(x: 22, y: 572), control: CGPoint(x: 230, y: 225))
            
            // internal path
            path.move(to: CGPoint(x: 195, y: 257))      //<-- start point 2
            path.addLine(to: CGPoint(x: 169, y: 309))
            path.addLine(to: CGPoint(x: 174, y: 263))
            path.addLine(to: CGPoint(x: 137, y: 244))
            path.addLine(to: CGPoint(x: 176, y: 232))
            path.addLine(to: CGPoint(x: 195, y: 94))
            path.addLine(to: CGPoint(x: 214, y: 232))
            path.addLine(to: CGPoint(x: 253, y: 244))
            path.addLine(to: CGPoint(x: 216, y: 263))
            path.addLine(to: CGPoint(x: 221, y: 309))
            path.closeSubpath()
        }
        .stroke(.yellow, lineWidth: 5)
    }
}

struct PathDemoView_Previews: PreviewProvider {
    static var previews: some View {
        PathDemoView()
    }
}
