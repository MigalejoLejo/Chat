//
//  SideMenuView.swift
//  Chat
//
//  Created by Daniel Chinea on 24/11/23.
//

import SwiftUI

struct SideMenuButtonView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        GeometryReader { geometry in
            
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
                        HStack{
                            Button(action: {
                                withAnimation {
                                    isShowing = false
                                } }) {
                                    Image("ic_close")
                                        .resizable()
                                        .frame(width: 36, height: 36)
                                        .padding(0)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke(Color.grayPwC, lineWidth: 1)
                                        )
                                }
                            Spacer()
                        }

                        
                        Spacer()
                        
                        Text("Otras secciones")
                        Text("Tus espacios")
                        
                        Spacer()
                        
                        Button(action: {
                            print(geometry.safeAreaInsets.top)

                        }) {
                            Image("ic_close")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .padding(3)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.grayPwC, lineWidth: 1)
                                )
                            
                            Text("Configuración")
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, geometry.safeAreaInsets.top)
                    .padding(.bottom, geometry.safeAreaInsets.bottom)
                    .padding(.leading, 16)
                }
                .frame(width: UIScreen.main.bounds.width * 0.8)
                .padding(.leading, 0)
                .background(Color.white)
                .offset(x: isShowing ? 0 : -UIScreen.main.bounds.width)
                .edgesIgnoringSafeArea(.vertical)
                .animation(.easeInOut(duration: 0.3), value: isShowing)
                .transition(.move(edge: .leading))
            }
        }
    }
}
