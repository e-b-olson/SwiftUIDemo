//
//  NavigationLinkDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct NavigationLinkDemoView: View {
    @State private var type: ContentViewModel.ViewType = ContentViewModel.ViewType.allCases.randomElement()!
    
    var body: some View {
        Button("Randomize NavigationLink", action: { type =  ContentViewModel.ViewType.allCases.randomElement()!})
            .buttonStyle(.borderedProminent)
            .padding(.bottom, 32)

        NavigationLink {
            DemoView(type: type)
        } label: {
            Text(type.rawValue)
        }
    }
}

struct NavigationLinkDemoView_Previews: PreviewProvider {
    static var previews: some View {
        /*
         NavigationLinks need to be inside a NavigationView.
         
         In this app, the top level view (ContentView) wraps
         the subviews in a NavigationView.
         */
        NavigationView {
            VStack {
                NavigationLinkDemoView()
            }
        }
    }
}
