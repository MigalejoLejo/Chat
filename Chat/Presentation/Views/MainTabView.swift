//
//  MainTabView.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = "Inicio"

    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Inicio")
                .tabItem {
                    Image("ic_home")
                        .foregroundColor(.orangePwC)

                    Text("Inicio")
                }
                .tag("Inicio")

            Text("Espacios")
                .tabItem {
                    Image("ic_spaces")
                    Text("Espacios")
                }
                .tag("Espacios")
            
            Text("Agenda")
                .tabItem {
                    Image("ic_nav_calendar")
                    Text("Agenda")
                }
                .tag("Agenda")
            
            ChatView()
                .tabItem {
                    Image("ic_messages")
                    Text("Mensajes")
                }
                .tag("Mensajes")
        }
        .accentColor(.orangePwC)
    }
}
