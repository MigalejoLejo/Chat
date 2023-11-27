//
//  ChatApp.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 23/11/23.
//

import SwiftUI
import FirebaseCore

// AppDelegate necessary for using Firebase


@main
struct ChatApp: App {
    
    init(){
        FirebaseApp.configure()
    }
        
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
