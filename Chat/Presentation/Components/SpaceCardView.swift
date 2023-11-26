//
//  SpaceCardView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//
import SwiftUI

struct SpaceCardView: View {
    let space: Space
    @Binding var isShowingSideMenu: Bool


    var body: some View {
        NavigationLink(destination: SpaceDetailView(isShowingSideMenu: $isShowingSideMenu, space: space)) {

        HStack {
            Image("avatar_placeholder") // O usa Image(space.imageName) si tienes una imagen personalizada
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .padding(6)// Ajusta el tamaño según sea necesario

            VStack(alignment: .leading) {
                Text(space.name)
                    .font(.headline)
                    .foregroundStyle(Color.black)
                Text("\(space.memberCount) miembros")
                    .foregroundStyle(Color.gray)

                    .font(.custom("", size: 12))
            }

            Spacer()

                Text("Unirse")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.white)
                .padding(.vertical, 5)
                .padding(.horizontal, 30)
                .background(Color.orangePwC)
                .cornerRadius(5)
            }
            .buttonStyle(PlainButtonStyle()) // Para prevenir el estilo predeterminado de NavigationLink
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(5)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}


struct SpaceCardView_Previews: PreviewProvider {

    static var previews: some View {
        let spacesData = [Space(id: UUID(), name: "Ibex35", memberCount: 238, imageName: "ibex35")]
        
        SpaceCardView(space: spacesData[0], isShowingSideMenu: .constant(false))
            .previewDevice("iPhone 15")
    }
}
