//
//  PublishCard.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct PublicationCardView: View {
    let publication: Publication
    @Binding var isShowingSideMenu: Bool


    var body: some View {
        NavigationLink(destination: PublicationDetailView(isShowingSideMenu: $isShowingSideMenu, publication: publication)) {
            VStack (alignment: .leading) {
                NavigationLink(destination: SpaceDetailView(isShowingSideMenu: $isShowingSideMenu, space: publication.space)) {
                    
                    HStack{
                        Image(publication.space.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 15)
                            .padding([.vertical, .trailing], 6)
                        
                        Text(publication.space.name)
                            .foregroundStyle(Color.black)
                            .font(.custom("", size: 12))
                        
                        Text("1h")
                            .foregroundStyle(Color.gray)
                            .font(.custom("", size: 12))
                        
                        Spacer()
                    }
                    .padding(.top, 5)
                }
                
                    HStack {
                        Image("avatar_placeholder")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding([.vertical, .trailing], 6)
                        
                        VStack(alignment: .leading) {
                            Text(publication.author)
                                .font(.headline)
                                .foregroundStyle(Color.black)
                            Text("\(publication.authorPosition)")
                                .foregroundStyle(Color.gray)
                                .font(.custom("", size: 12))
                        }
                        Spacer()
                    }
                    
                    Text(publication.space.description)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(Color.black)
                    
                
                
                Divider()
                
                HStack{
                    Spacer()
                    
                    Button(action: {
                        print("Botón Like presionado")
                    }) {
                        Image("ic_heart")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    
                    Button(action: {
                        print("Botón Share presionado")
                    }) {
                        Image("ic_share")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
                .padding(.bottom)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(5)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)

    }
}


struct PublishCardView_Previews: PreviewProvider {

    static var previews: some View {
        let spacesData = [Space(id: UUID(), name: "Ibex35", memberCount: 238, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", imageName: "ibex35")]
        
        PublicationCardView(publication: publicationData[0], isShowingSideMenu: .constant(false))
            .previewDevice("iPhone 15")
    }
}

