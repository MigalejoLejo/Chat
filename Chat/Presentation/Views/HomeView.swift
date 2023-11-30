//
//  HomeView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct HomeView: View {
    let publications: [Publication] = publicationData
    @Binding var isShowingSideMenu: Bool
    @State private var isMenuVisible = false

    var body: some View {
        NavigationView {
            ScrollView{
                ZStack{
                    VStack (alignment: .leading, spacing: 12){
                        DropdownMenuView()
                        
                        ForEach(publications) { publication in
                            PublicationCardView(publication: publication, isShowingSideMenu: $isShowingSideMenu)
                        }
                    }
                    .padding()
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
