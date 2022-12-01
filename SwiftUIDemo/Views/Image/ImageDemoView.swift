//
//  ImageDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ImageDemoView: View {
    
    var body: some View {
        Image(systemName: "photo.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(32)
    }
}

struct ImageDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDemoView()
    }
}
