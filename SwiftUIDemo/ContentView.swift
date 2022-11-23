//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            List(ContentViewModel.ViewType.allCases, id: \.rawValue) { type in
                NavigationLink {
                    DemoView(type: type)
                } label: {
                    Text(type.rawValue)
                }
            }
            .navigationTitle("SwifUI Demo")
        }
        .navigationBarTitleDisplayMode(.large)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
