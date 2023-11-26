//
//  HomeView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct HomeView: View {

@Binding var isShowingSideMenu: Bool

    var body: some View {
        NavigationView {
            ScrollView{
                ZStack{
                    VStack {
                        Text("Home")
                        ForEach(1...40, id: \.self) { _ in
                            Text("Este es el texto que se mostrará 15 veces.")
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .customToolbar(
                        isShowingSideMenu: $isShowingSideMenu,
                        title: "Inicio",
                        showSearch: true,
                        searchAction: { print("Buscar") }
                    )
                }
            }
        }
    }
}
