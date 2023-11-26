//
//  SpaceView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct SpaceView: View {

@Binding var isShowingSideMenu: Bool

    var body: some View {
        NavigationView {
            ScrollView{
                ZStack{
                    VStack {
                        Text("Otros espacios")
                            .bold()
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    .customToolbar(
                        isShowingSideMenu: $isShowingSideMenu,
                        title: "Espacios",
                        showSearch: true,
                        searchAction: { print("Buscar") }
                    )
                }
            }
        }
    }
}

