//
//  AuthViewModel.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var isAuthenticated = false
    @Published var isRegistered = false
    
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
    
    
    

    func register(email: String, password: String, name: String) {
        AuthService.shared.signUp(email: email, password: password, name: name) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let userUID):
                    print("Usuario se registro con UID: \(userUID)")
                    self.isAuthenticated = true
                case .failure(let error):
                    print("Error de registro: \(error.localizedDescription)")
                    // Mostrar algún mensaje de error
                }
            }
        }
    }
}
