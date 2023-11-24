//
//  ChatView.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatViewModel = ChatViewModel()
    @State private var isShowingSideMenu = false

    var body: some View {
        NavigationView {
            ScrollView{
                ZStack{
                    VStack {
                        Text("ChatView")
                        ForEach(1...40, id: \.self) { _ in
                            Text("Este es el texto que se mostrará 15 veces.")
                        }
                    }
                    .customToolbar(
                        isShowingSideMenu: $isShowingSideMenu,
                        title: "Mensajes",
                        showProfile: false,
                        showSearch: true,
                        showOptions: true,
                        showCalendar: false,
                        searchAction: { print("Buscar") },
                        editAction: { print("Nuevo mensaje") },
                        calendarAction: { print("Calendario") }
                    )
                    
                    SideMenuView(isShowing: $isShowingSideMenu)
                }
            }
        }
    }
}
