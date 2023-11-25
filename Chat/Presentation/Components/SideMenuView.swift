//
//  SideMenuView.swift
//  Chat
//
//  Created by Daniel Chinea on 24/11/23.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool

    var body: some View {
        ZStack(alignment: .leading){
            // Fondo oscurecido
            if isShowing {
                Color.black.opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            isShowing = false
                        }
                    }
                    .transition(.opacity)
            }

            // Contenido del menú lateral
            VStack(alignment: .leading) {
                VStack(alignment: .leading){
                    // Botón de cierre en la parte superior
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                isShowing = false
                            }
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.black)
                        }
                        .padding(.leading, 16)
                        .padding(.top, 16)

                        Spacer()

                    // Resto del contenido del menú
                    Text("Holaa")
                        .padding()
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .background(Color.grayPwC)

            }
            .frame(width: UIScreen.main.bounds.width * 0.8)
            .padding(.leading, 0)
            .background(Color.white)
            .offset(x: isShowing ? 0 : -UIScreen.main.bounds.width)
            .edgesIgnoringSafeArea(.all)
            // Aplicación correcta de la animación usando 'animation(_:value:)'
            .animation(.easeInOut(duration: 0.3), value: isShowing)
            .transition(.move(edge: .leading))
        }
    }
}
