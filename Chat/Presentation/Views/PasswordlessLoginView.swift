//
//  PaswordlessLoginView.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 27/11/23.
//

import SwiftUI

struct PaswordlessLoginView: View {
    @State private var email: String = "miguelalejandro.correa.avila@pwc.com"
   
    @EnvironmentObject var authViewModel: AuthViewModel
    @Binding var isShowingSideMenu: Bool

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(5)
                .padding(.horizontal)

            
            Button("Iniciar Sesión") {
                
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal)
           
        }
        .padding()
        .fullScreenCover(isPresented: $authViewModel.isAuthenticated) {
            ChatView(isShowingSideMenu: $isShowingSideMenu)
        }
    }
}




#Preview(){
    struct Preview: View {
        @State var contactImage: String = "avatar_placeholder"
        @State var contactName:String = "Miguel Correa"
        @State var contactCompany:String = "PwC Tenerife"
        @State var lastMessage:String = "Hola como estas?"

        var body: some View {
            
            Passwor(contactImage: contactImage, contactName: contactName, contactCompany: contactCompany, lastMessage: lastMessage)
            
        }
    }

    return Preview()
    
}
