//
//  OutlineSubgroupChildrenDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct OutlineSubgroupChildrenDemoView: View {
    
    var body: some View {
        /*
         This text is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/outlinesubgroupchildren
         */
        VStack(alignment: .leading) {
            Text("A type-erased view representing the children in an outline subgroup.")
                .padding(16)
            Text("(OutlineGroup uses this type as a generic constraint for the Content of the DisclosureGroup instances it creates.)")
                .padding(16)
        }
    }
}

struct OutlineSubgroupChildrenDemoView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineSubgroupChildrenDemoView()
    }
}
