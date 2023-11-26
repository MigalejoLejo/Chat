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
                        
                        ScrollView(.vertical){
                            
                            VStack(alignment: .leading){
                                Rectangle()
                                    .fill(Color.grayPwC)
                                    .frame(height: 1)
                                
                                Text("Otras secciones")
                                    .bold()
                                    .padding(.vertical, 4)
                                
                                Rectangle()
                                    .fill(Color.grayPwC)
                                    .frame(height: 1)
                                    .edgesIgnoringSafeArea(.horizontal)
                                
                                SideMenuButtonView(categoryText: "Documentos", categoryImage: "ic_documents", action: { print("Documentos pulsado") })
                                SideMenuButtonView(categoryText: "Nombramientos", categoryImage: "ic_tags", action: { print("Nombramientos pulsado") })
                                SideMenuButtonView(categoryText: "Espacio PwC", categoryImage: "ic_star", action: { print("Espacio PwC pulsado") })
                                SideMenuButtonView(categoryText: "Perfiles", categoryImage: "ic_user", action: { print("Perfiles pulsado") })
                                SideMenuButtonView(categoryText: "Fotos", categoryImage: "ic_image", action: { print("Fotos pulsado") })
                                SideMenuButtonView(categoryText: "Vídeos", categoryImage: "ic_video", action: { print("Vídeos pulsado") })
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.top, 12)
                            .padding(.bottom, 24)
                            
                            VStack(alignment: .leading){
                                Rectangle()
                                    .fill(Color.grayPwC)
                                    .frame(height: 1)
                                
                                Text("Tus espacios")
                                    .bold()
                                    .padding(.vertical, 4)
                                
                                Rectangle()
                                    .fill(Color.grayPwC)
                                    .frame(height: 1)
                                    .edgesIgnoringSafeArea(.horizontal)
                                
                                SideMenuButtonView(categoryText: "Documentos", categoryImage: "ic_documents", action: { print("Documentos pulsado") })
                                SideMenuButtonView(categoryText: "Nombramientos", categoryImage: "ic_tags", action: { print("Nombramientos pulsado") })
                                SideMenuButtonView(categoryText: "Espacio PwC", categoryImage: "ic_star", action: { print("Espacio PwC pulsado") })
                                
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.top, 12)
                            .padding(.bottom, 24)
                            
                            Spacer()
                            
                            Rectangle()
                                .fill(Color.grayPwC)
                                .frame(height: 1)
                                .edgesIgnoringSafeArea(.horizontal)
                            
                            SideMenuButtonView(categoryText: "Configuración", categoryImage: "ic_settings", action: { print("Configuración pulsado") })

                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, geometry.safeAreaInsets.top)
                    .padding(.bottom, geometry.safeAreaInsets.bottom)
                    .padding(.horizontal, 16)
                    
                }
                .frame(width: UIScreen.main.bounds.width * 0.75)
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

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
            .previewDevice("iPhone 15")
    }
}
