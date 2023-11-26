//
//  SpaceView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct SpaceView: View {
    @Binding var isShowingSideMenu: Bool
    let spaces: [Space] = spacesData

    var body: some View {

        NavigationView {
            ScrollView {

                VStack{
                    VStack (alignment: .leading){
                        Text("Espacios populares")
                            .bold()
                            .padding([.top, .leading, .trailing])
                        
                        SpaceSliderView(spaces: spaces)
                    }
                    
                    VStack (alignment: .leading, spacing: 12){
                        Text("Otros espacios")
                            .bold()
                            .padding(.bottom, 4)
                        
                        ForEach(spaces) { space in
                            SpaceCardView(space: space, isShowingSideMenu: $isShowingSideMenu)
                        }
                    }
                    .padding()
                    
                    VStack (alignment: .leading, spacing: 12){
                        Text("Publicaciones destacadas")
                            .bold()
                            .padding(.bottom, 4)
                        
                        ForEach(spaces) { space in
                            PublicationCardView(publication: <#T##Publication#>, isShowingSideMenu: $isShowingSideMenu)
                        }
                    }
                    .padding()
                }


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

struct SpaceView_Previews: PreviewProvider {
    static var previews: some View {
        
        let spacesData = [Space(id: UUID(), name: "Ibex35", memberCount: 238, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", imageName: "ibex35")]
        
        SpaceView(isShowingSideMenu: .constant(false))
            .previewDevice("iPhone 15")
    }
}
