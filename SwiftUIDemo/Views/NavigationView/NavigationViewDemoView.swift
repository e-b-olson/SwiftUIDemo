//
//  NavigationViewDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct NavigationViewDemoView: View {
    private let colors: [Color] = [.purple, .indigo, .blue, .cyan, .teal]
    
    var body: some View {
        /*
         Note: NavigationView is now deprecated (as of iOS 16.1)
         Use NavigationStack or NavigationSplitView instead.
         */
        if #available(iOS 16, *) {
            GroupBox {
                Group {
                    Text("NavigationView is deprecated as of iOS 16.1")
                        .padding(.top, 1)
                        .padding(.bottom, 5)
                    Text("Use NavigationStack or NavigationSplitView instead, as best fits your needs.")
                }
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 2)
            } label: {
                Label("NavigationView Deprecated", systemImage: "info.circle")
                    .foregroundColor(Color.blue)
            }
        } else {
            NavigationView {
                List(colors, id: \.self) { color in
                    NavigationLink {
                        Text(color.description)
                            .foregroundColor(color)
                    } label: {
                        Text(color.description)
                    }
                }
            }
        }
    }
}

struct NavigationViewDemoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewDemoView()
    }
}
