//
//  ViewThatFitsDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct ViewThatFitsDemoView: View {
    @State var uploadProgress: Double = 0.25

    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/viewthatfits
         
         Note: ViewThatFits is currently only available in iOS 16.0+
         */
        VStack {
            if #available(iOS 16, *) {
                // CustomResizableContainerView used for demo only (it is not needed)
                CustomResizableContainerView {
                    ViewThatFits(in: .horizontal) {
                        // View 0
                        HStack {
                            Text("\(uploadProgress.formatted(.percent))")
                            ProgressView(value: uploadProgress)
                                .frame(width: 100)
                        }
                        
                        // View 1
                        ProgressView(value: uploadProgress)
                            .frame(width: 100)
                        
                        // View 2
                        Text("\(uploadProgress.formatted(.percent))")
                    }
                }
            } else {
                Text("Placeholder View")
                Text("(ViewThatFits only available in iOS 16+)")
            }
        }
        
    }
}

struct CustomResizableContainerView<Content: View>: View {
    @State private var dynamicWidth: Double = 100.0
    var content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        GeometryReader { _ in
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    content()
                    Spacer()
                }
                Spacer()
            }
        }
        .border(.gray)
        .frame(width: dynamicWidth, height: 100)
        
        Section{
            Slider(value: $dynamicWidth, in: 10...300, label: { Text("Width") })
            Text("Adjust Width")
        }
        .padding(.horizontal, 32)
    }
}


struct ViewThatFitsDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ViewThatFitsDemoView()
    }
}
