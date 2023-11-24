//
//  MainTabView.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = "Inicio" // Identificador de la pestaña seleccionada

    var body: some View {
        TabView(selection: $selectedTab) {
            ChatView()
                .tabItem {
                    Image("ic_home")
                        .foregroundColor(.orange) // Cambia el color aquí

                    Text("Inicio")
                }
                .tag("Inicio")

            Text("Hola2")
                .tabItem {
                    Image("ic_spaces")
                    Text("Espacios")
                }
                .tag("Espacios")
            
            ChatView()
                .tabItem {
                    Image("ic_calendar")
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
        .accentColor(.orange)
    }
}
