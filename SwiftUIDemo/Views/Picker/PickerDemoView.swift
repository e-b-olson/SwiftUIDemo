//
//  PickerDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

enum Direction: String, CaseIterable, Identifiable {
    case None
    case North
    case South
    case East
    case West

    var id: Self { self }
}

struct PickerDemoView: View {
    @State private var selectedDirection: Direction = .None
    
    var body: some View {
        Picker("Direction", selection: $selectedDirection) {
            ForEach(Direction.allCases) { direction in
                Text(direction.rawValue)
            }
        }
    }
}

struct PickerDemoView_Previews: PreviewProvider {
    static var previews: some View {
        PickerDemoView()
    }
}
