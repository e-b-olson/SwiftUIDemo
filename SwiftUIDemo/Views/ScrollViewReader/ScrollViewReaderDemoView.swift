//
//  ScrollViewReaderDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ScrollViewReaderDemoView: View {
    @Namespace var topID
    @Namespace var bottomID
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/scrollviewreader
         */
        
        ScrollViewReader { proxy in
            ScrollView {
                Button("Scroll to Bottom") {
                    withAnimation {
                        proxy.scrollTo(bottomID)
                    }
                }
                .id(topID)
                
                VStack(spacing: 0) {
                    ForEach(0..<100) { i in
                        color(fraction: Double(i) / 100)
                            .frame(height: 32)
                    }
                }
                
                Button("Return to Top") {
                    withAnimation {
                        proxy.scrollTo(topID)
                    }
                }
                .id(bottomID)
            }
        }
    }
    
    func color(fraction: Double) -> Color {
        Color(red: 0.5, green: 1 - fraction, blue: fraction)
    }
}

struct ScrollViewReaderDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderDemoView()
    }
}
