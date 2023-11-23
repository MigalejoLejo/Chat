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
            Button("Iniciar Sesión") {
                AuthService.shared.signIn(email: email, password: password) { result in
                    switch result {
                    case .success(let user):
                        print("Usuario inició sesión: \(user)")
                        // Navegar al chat o actualizar la UI
                    case .failure(let error):
                        print("Error de inicio de sesión: \(error)")
                        // Mostrar algún mensaje de error
                    }
                }
            }
        }
    }
}
