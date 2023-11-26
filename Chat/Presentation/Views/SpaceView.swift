//
//  SpaceView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct SpaceView: View {
    @Binding var isShowingSideMenu: Bool
    let spaces: [Space] = spacesData // Asumiendo que spacesData es tu conjunto de datos

    var body: some View {

        NavigationView {
            ScrollView {
                VStack (alignment: .leading){
                    Text("Otros espacios")
                        .bold()
                    
                    ForEach(spaces) { space in
                        SpaceCardView(space: space, isShowingSideMenu: $isShowingSideMenu)
                    }
                }
                .padding()
            }
            .customToolbar(
                isShowingSideMenu: $isShowingSideMenu,
                title: "Espacios",
                showSearch: true,
                searchAction: { print("Buscar") }
            )
        }
    }
}

