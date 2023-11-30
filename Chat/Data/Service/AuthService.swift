//
//  AuthService.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import Firebase
import FirebaseFirestore
import Combine
import SwiftUI


class AuthService {
//    @Published var user: User?
    @Published var userUID: String?
    @Published var userName: String? = nil
    @Published var email: String? = nil
    @Published var hasFetchedUserName = false
    
    
    static let shared = AuthService()

    private init() {}

    
    func signIn(email: String, password: String, completion: @escaping (Result<String, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            if let user = result?.user {
                self?.userUID = user.uid
                self?.email = user.email
                completion(.success(user.uid)) // Envía éxito con el UID del usuario
            } else if let error = error {
                completion(.failure(error)) // Envía el error
            }
        }
    }




    func signUp(email: String, password: String, name: String, completion: @escaping (Result<String, Error>) -> Void) {
        let db = Firestore.firestore()
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let user = authResult?.user else {
                completion(.failure(NSError(domain: "AuthError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Unknown error occurred."])))
                return
            }
            
            // Aquí el usuario se ha creado correctamente, procedemos a guardar los datos adicionales en Firestore
            db.collection("users").document(user.uid).setData([
                "name": name,
                "email": email
            ]) { error in
                if let error = error {
                    completion(.failure(error))
                } else {
                    completion(.success(user.uid))
                }
            }
        }
    }


     func signOut() {
         try? Auth.auth().signOut()
//         user = nil
         hasFetchedUserName = false
     }
}

