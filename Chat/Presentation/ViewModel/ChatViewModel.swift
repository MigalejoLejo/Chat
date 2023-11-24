//
//  ChatViewModel.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    func singout(email: String, password: String) {
        AuthService.shared.signOut()
    }
}
