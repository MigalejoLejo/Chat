//
//  ContentView.swift
//  Chat
//
//  Created by José Daniel Chinea on 23/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authViewModel = AuthViewModel()
    @State var isShowingSideMenu = false

    var body: some View {
        Group {
            if (authViewModel.isAuthenticated && authViewModel.isRegistered) {
                MainTabView(isShowingSideMenu: $isShowingSideMenu)
            } else if authViewModel.isAuthenticated {
                RegFirstView()
            } else {
                LoginView(isShowingSideMenu: $isShowingSideMenu)
            }
        }
        .environmentObject(authViewModel)
    }
}
#Preview {
    ContentView()
}
