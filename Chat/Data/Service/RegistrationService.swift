//
//  RegistrationService.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 27/11/23.
//

import Foundation


import Firebase
import FirebaseFirestore
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
 
    
    
    
    
}
