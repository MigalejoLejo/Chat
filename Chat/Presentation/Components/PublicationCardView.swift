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
        NavigationLink(destination: Text("Hola")) {
            VStack{
                HStack{
                    Image("avatar_placeholder")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .padding([.vertical, .trailing], 6)

                        Text(publication.author)
                            .foregroundStyle(Color.black)
                            .font(.custom("", size: 12))

                        Text("1h")
                            .foregroundStyle(Color.gray)
                            .font(.custom("", size: 12))
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
                
                Text(publication.author)
                
                Rectangle()
                    .fill(Color.grayPwC)
                    .frame(height: 1)
                    .edgesIgnoringSafeArea(.horizontal)
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

