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
            // Menú lateral

            VStack(alignment: .leading, spacing: 0) {
                ForEach(1...40, id: \.self) { _ in
                    Text("Opción")
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
            .offset(x: isShowing ? 0 : -UIScreen.main.bounds.width)
            .edgesIgnoringSafeArea(.all)
            
            // Fondo translúcido que cubre el resto de la pantalla
            GeometryReader { _ in
                EmptyView()
            }
            .background(isShowing ? Color.black.opacity(0.5) : Color.clear)
            .opacity(isShowing ? 1 : 0)
            .onTapGesture {
                withAnimation {
                    isShowing = false
                }
            }
        }
        .animation(.easeInOut)
    }
}
