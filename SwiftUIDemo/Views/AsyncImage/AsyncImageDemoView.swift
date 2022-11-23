//
//  AsyncImageDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct AsyncImageDemoView: View {
    
    var body: some View {
        AsyncImage(url:URL(string: Constants.asyncImageUrlString))
    }

    private struct Constants {
        static let asyncImageUrlString = "https://www.knowbotskill.com/knowbot/static/img/favicons/apple-touch-icon.png"
    }
}

struct AsyncImageDemoView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageDemoView()
    }
}
