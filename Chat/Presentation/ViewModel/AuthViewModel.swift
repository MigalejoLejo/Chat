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
                
                
                print("ATTENTION:")
                self.verifyUserExists(uid: userUID)
                
                
               
                
            case .failure(let error):
                print("Error de inicio de sesión: \(error.localizedDescription)")
                // Mostrar algún mensaje de error
            }
        }
    }
    
    

        func verifyUserExists(uid: String) {
            RegistrationService.checkIsUserRegistered(uid: uid) { registrationStatus in
                DispatchQueue.main.async {
                    self.isRegistered = registrationStatus
                    if registrationStatus {
                        print("El usuario existe en la base de datos.")
                    } else {
                        print("El usuario no existe en la base de datos.")
                    }
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
