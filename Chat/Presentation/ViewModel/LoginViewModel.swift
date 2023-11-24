//
//  LoginViewModel.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var isAuthenticated = false

    func login(email: String, password: String) {
        AuthService.shared.signIn(email: email, password: password) { result in
            switch result {
            case .success(let userUID):
                print("Usuario inició sesión con UID: \(userUID)")
                self.isAuthenticated = true
            case .failure(let error):
                print("Error de inicio de sesión: \(error.localizedDescription)")
                // Mostrar algún mensaje de error
            }
        }
    }
}
