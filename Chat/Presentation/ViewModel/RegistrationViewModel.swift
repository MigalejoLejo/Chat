//
//  RegistrationViewModel.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 29/11/23.
//

import Foundation




class RegistrationViewModel: ObservableObject {
      
    private func getUserEmail () -> String {
        AuthService.shared.email ?? ""
    }
    
    private func getUserId () -> String {
        AuthService.shared.userUID ?? ""
        
    }
    
    func registerUserToDB (firstName: String, lastName: String, employment: [CompanyID:EmployeePosition]){
        var user = User(id: getUserId(), firstName: firstName, lastName: lastName, email: getUserEmail(), employeePositions: employment)
        
        print("this user will be registered:")
        print(user)
//        RegistrationService.registerUserToDB(user: user) { result in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let userUID):
//                    print("Usuario se registro con UID: \(userUID)")
//                case .failure(let error):
//                    print("Error de registro: \(error.localizedDescription)")
//                    // Mostrar algún mensaje de error
//                }
//            }
//        }
    }
   
    
}
