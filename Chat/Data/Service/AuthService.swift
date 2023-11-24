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
    @Published var hasFetchedUserName = false
    
    static let shared = AuthService()

    private init() {}

    
    func signIn(email: String, password: String, completion: @escaping (Result<String, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            if let user = result?.user {
                self?.userUID = user.uid
                completion(.success(user.uid)) // Envía éxito con el UID del usuario
            } else if let error = error {
                completion(.failure(error)) // Envía el error
            }
        }
    }



     func signUp(email: String, password: String, name: String) {
         let db = Firestore.firestore()
         Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
             if let user = result?.user {
//                 self?.user = user
                 db.collection("users").document(user.uid).setData([
                     "name": name,
                     "email": email
                 ]) { error in
                     if let error = error {
                         print("Error al crear el documento del usuario: \(error)")
                     } else {
//                         self?.currentUserName()
                     }
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

