//
//  SecureFieldDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct SecureFieldDemoView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/securefield
         */

        VStack {
            TextField(
                "User name (email address)",
                text: $username)
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .border(Color(UIColor.separator))

            SecureField("Password", text: $password) {
                // SecureField `onCommit` closure
                handleLogin(username: username, password: password)
            }
            .border(Color(UIColor.separator))
        }
        .padding(.horizontal, 32)
    }
    
    func handleLogin(username: String, password: String) {
        debugPrint("Credentials")
        debugPrint("username: \(username)")
        debugPrint("password: \(password)")
    }
}

struct SecureFieldDemoView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldDemoView()
    }
}
