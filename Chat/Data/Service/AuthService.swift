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

/*
class AuthService {
    @Published var user: User?
    @Published var userUID: String?
    @Published var userName: String? = nil
    @Published var hasFetchedUserName = false
    
    
    func signIn(email: String, password: String) {
         Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
             if let user = result?.user {
                 self?.user = user
                 self?.couponViewModel.loadUserCoupons(userID: user.uid)
                 self?.userUID = user.uid
                 self?.currentUserName()
             } else if let error = error {
                 print("Error al iniciar sesión:", error.localizedDescription)
             }
         }
     }


     func signUp(email: String, password: String, name: String) {
         let db = Firestore.firestore()
         Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
             if let user = result?.user {
                 self?.user = user
                 db.collection("users").document(user.uid).setData([
                     "name": name,
                     "email": email
                 ]) { error in
                     if let error = error {
                         print("Error al crear el documento del usuario: \(error)")
                     } else {
                         self?.couponViewModel.addDefaultCouponsToUser(userID: user.uid)
                         self?.couponViewModel.loadUserCoupons(userID: user.uid)
                         self?.currentUserName()
                     }
                 }
             }
         }
     }


     func signOut() {
         try? Auth.auth().signOut()
         user = nil
         hasFetchedUserName = false
     }
}
*/
