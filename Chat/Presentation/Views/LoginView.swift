//
//  LoginView.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
        }
    }
}
