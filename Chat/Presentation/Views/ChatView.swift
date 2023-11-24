//
//  ChatView.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatViewModel = ChatViewModel()

    var body: some View {
        VStack {
            Text("ChatView")
//            List(viewModel.messages) { message in
//                Text(message.content)
//                // Personaliza cada mensaje aquí...
//            }

            HStack {
//                TextField("Escribe un mensaje..." /*, text: $viewModel.newMessageContent*/)
                Button("Cerrar sesión") {
                    
                }
            }
        }
    }
}
