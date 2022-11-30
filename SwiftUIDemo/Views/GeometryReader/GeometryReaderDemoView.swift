//
//  GeometryReaderDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct GeometryReaderDemoView: View {
    
    var body: some View {
        /*
         The GeometryReader is one of my favorite "views"
         
         A GeometryReader will take up as much space as it is allowed.
         (i.e. it "grows" to the largest possible size)
         */
        
        GeometryReader { geometry in
            Text("GeometryReader is a container view that defines its content as a function of its own size and coordinate space.")
                .frame(width: geometry.size.width / 2.0)
        }
    }
}

struct GeometryReaderDemoView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderDemoView()
    }
}
