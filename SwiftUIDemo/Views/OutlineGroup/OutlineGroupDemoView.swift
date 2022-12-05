//
//  OutlineGroupDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

/*
 This code is adapted from Apple's documentation
 https://developer.apple.com/documentation/swiftui/outlinegroup
 */

struct FileItem: Hashable, Identifiable, CustomStringConvertible {
    var id: Self { self }
    var name: String
    var children: [FileItem]? = nil
    var description: String {
        switch children {
        case nil:
            return "📄 \(name)"
        case .some(let children):
            return children.isEmpty ? "📂 \(name)" : "📁 \(name)"
        }
    }
}

struct OutlineGroupDemoView: View {
    
    let data =
    FileItem(name: "users", children:
                [FileItem(name: "user1234", children:
                            [FileItem(name: "Photos", children:
                                        [FileItem(name: "photo001.jpg"),
                                         FileItem(name: "photo002.jpg")]),
                             FileItem(name: "Movies", children:
                                        [FileItem(name: "movie001.mp4")]),
                             FileItem(name: "Documents", children: [])
                            ]),
                 FileItem(name: "newuser", children:
                            [FileItem(name: "Documents", children: [])
                            ])
                ])
    
    var body: some View {
        OutlineGroup(data, children: \.children) { item in
            Text("\(item.description)")
        }
    }
}

struct OutlineGroupDemoView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroupDemoView()
    }
}
