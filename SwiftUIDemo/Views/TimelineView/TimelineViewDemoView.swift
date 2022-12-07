//
//  TimelineViewDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct TimelineViewDemoView: View {
    /*
     Apple Documentation
     https://developer.apple.com/documentation/swiftui/timelineview
     
     A timeline view acts as a container with no appearance of its own.
     Instead, it redraws the content it contains at scheduled points in
     time. For example, you can update the face of an analog timer once
     per second:
     */
    
    var body: some View {
        TimelineView(.periodic(from: Date(), by: 1)) { context in
            Text(context.date.description)
                .padding(.horizontal, 32)
                .font(.system(size: 32))
        }
    }
}

struct TimelineViewDemoView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineViewDemoView()
    }
}
