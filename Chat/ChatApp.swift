//
//  ChatApp.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 23/11/23.
//

import SwiftUI
import FirebaseCore

// AppDelegate necessary for using Firebase
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct ChatApp: App {
    
    // Register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
