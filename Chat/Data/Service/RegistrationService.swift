//
//  RegistrationService.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 27/11/23.
//

import Foundation


import Firebase
import FirebaseFirestore
import FirebaseAuth
import Combine
import SwiftUI


class RegistrationService {
    
    static func checkIsUserRegistered (uid: String, completion: @escaping (Bool) -> Void) {
        let db = Firestore.firestore()
            let docRef = db.collection("users").document(uid)

            docRef.getDocument { (document, error) in
                if let document = document, document.exists {
                    // El usuario existe en Firestore
                    completion(true)
                } else {
                    // El documento no existe o hay un error
                    completion(false)
                }
            }
        }
 
   
    static func registerUserToDB (user: User, completion: @escaping (Result<User, Error>) -> Void) {
        let db = Firestore.firestore()
        
        // Aquí el usuario se ha creado correctamente, procedemos a guardar los datos adicionales en Firestore
        db.collection("users").document(user.id).setData([
            "firstName": user.firstName,
            "lastName": user.lastName,
            "email": user.email,
            "employeePositions": user.employeePositions
        ]) { error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(user))
            }
        }
    }
    
    
    
    
}
