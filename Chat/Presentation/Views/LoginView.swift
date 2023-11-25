//
//  LoginView.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = "test@test.com"
    @State private var password: String = "1234567"
    @EnvironmentObject var authViewModel: AuthViewModel
    @Binding var isShowingSideMenu: Bool

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(5)
                .padding(.horizontal)

            SecureField("Contraseña", text: $password)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(5)
                .padding(.horizontal)
            
            Button("Iniciar Sesión") {
                print(email + password)
                authViewModel.login(email: email, password: password)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal)
        }
        .padding()
        .fullScreenCover(isPresented: $authViewModel.isAuthenticated) {
            ChatView(isShowingSideMenu: $isShowingSideMenu)
            SecureField("Password", text: $password)
        }
    }
}
