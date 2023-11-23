//
//  ContentView.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 23/11/23.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @State private var mail: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            TextField("Nombre de usuario", text: $mail)
                .padding()
                .background(Color.gray.opacity(0.1)) // Un ligero fondo gris
                .cornerRadius(5)
                .padding(.horizontal)

            SecureField("Contraseña", text: $password)
                .padding()
                .background(Color.gray.opacity(0.1)) // Un ligero fondo gris
                .cornerRadius(5)
                .padding(.horizontal)

            Button(action: createUser) {
                Text("Iniciar Sesión")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
        .padding()
    }

    func createUser(){
        Auth.auth().createUser(withEmail: mail, password: password) { response, error in
            if let e = error {
                print("🙁 A problem ocurred:" + "\n" + "\(e.localizedDescription)")
            }
            
            if let _ = response {
                    print(" Todo bien my friend")
            }
        }    
    }
}

#Preview {
    ContentView()
}
