//
//  ContentView.swift
//  Chat
//
//  Created by José Daniel Chinea Marrero on 23/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authViewModel = AuthViewModel()
    
    var body: some View {
        Group {
            if authViewModel.isAuthenticated {
                MainTabView()
            } else {
                LoginView()
            }
        }
        .environmentObject(authViewModel)
    }
}
#Preview {
    ContentView()
}
