//
//  MainTabView.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        TabView {
            ChatView()
                .tabItem {
                    Label("Inicio", systemImage: "house.fill")
                }
            Text("Hola2")
                .tabItem {
                    Label("Espacios", systemImage: "2.circle")
                }
            ChatView()
                .tabItem {
                    Label("Agenda", systemImage: "calendar")
                }
            ChatView()
                .tabItem {
                    Label("Mensajes", systemImage: "message.fill")
                }
        }
    }
}
