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
        ZStack {
            // Menú lateral...
            VStack(alignment: .leading) {
                // Botón de cierre
                Button(action: {
                    withAnimation {
                        isShowing = false
                    }
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding(.top, 16)
                        .padding(.trailing, 16)
                        .foregroundColor(.black)
                }
                .alignmentGuide(.leading) { d in d[.trailing] }
                .padding(.leading, UIScreen.main.bounds.width * 0.8 - 24)
                
                // Aquí irían los elementos de tu menú
                // ...
            }
            .frame(width: UIScreen.main.bounds.width * 0.8)
            .background(Color.white)
            .offset(x: isShowing ? 0 : -UIScreen.main.bounds.width, y: 0)
            .edgesIgnoringSafeArea(.all)
            .transition(.move(edge: .leading))
            .animation(.easeInOut)
            
            // Fondo oscurecido
            if isShowing {
                Color.black.opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation {
                            isShowing = false
                        }
                    }
            }
        }
    }
}
