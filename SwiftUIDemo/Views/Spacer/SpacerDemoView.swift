//
//  SpacerDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct SpacerDemoView: View {
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                Text("Spacers help align views!")
                    .padding(.horizontal, 12)
            }
            
            Spacer()
        }
    }
}

struct SpacerDemoView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerDemoView()
    }
}
