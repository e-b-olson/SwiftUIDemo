//
//  SubscriptionViewDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct SubscriptionViewDemoView: View {
    @State private var screenshotTime: Date?
    @State private var screenshotTaken = false
    
    var body: some View {
        /*
         While you *can* create a SubscriptionView directly, it is generally
         advisable to just use the `.onReceive` view modifier.
         
         Note: to simulate a screenshot in the simulator, go to:
            Device -> Trigger Screenshot
         */
        VStack {
            Spacer()
            SubscriptionView(
                content: Text("Screenshot taken at: \(screenshotTime?.description ?? "N/A")"),
                publisher: NotificationCenter.default.publisher(
                    for: UIApplication.userDidTakeScreenshotNotification),
                action: { _ in
                    screenshotTime = Date()
                })
            
            Spacer()
            
            Text("Screenshot taken: \(screenshotTaken.description)")
                .onReceive(
                    NotificationCenter.default.publisher(
                        for: UIApplication.userDidTakeScreenshotNotification
                    )) { _ in
                        screenshotTaken = true
                    }
            Spacer()
        }
        .padding(.horizontal, 32)
    }
}

struct SubscriptionViewDemoView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionViewDemoView()
    }
}
