//
//  SpaceDetailView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct SpaceDetailView: View {
    @Binding var isShowingSideMenu: Bool
    let space: Space

    var body: some View {
            ScrollView{
                ZStack{
                    VStack {
                        ForEach(1...40, id: \.self) { _ in
                            Text("Este es el texto que se mostrará 15 veces.")
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .navigationBarBackButtonHidden(true)
                    .customToolbar(
                        isShowingSideMenu: $isShowingSideMenu,
                        title: space.name,
                        showBack: true,
                        showAddSpace: true,
                        showSearch: true,
                        searchAction: { print("Buscar") }
                    )
                }
            }
    }
}


