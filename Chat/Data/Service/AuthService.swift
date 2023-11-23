//
//  AuthService.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import Firebase
import FirebaseAuth

class AuthService {
    static let shared = AuthService()

    private init() {}

    func signIn(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let user = authResult?.user else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No se pudo obtener el usuario."])))
                return
            }

            completion(.success(user))
        }
    }

    func signUp(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let user = authResult?.user else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No se pudo crear el usuario."])))
                return
            }

            completion(.success(user))
        }
    }

    func signOut() throws {
        try Auth.auth().signOut()
    }

    // Agrega más funciones según sea necesario, como restablecer contraseña, verificar email, etc.
}

