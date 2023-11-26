//
//  SpaceSlideCardView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct SpaceSlideCardView: View {
    let space: Space

    var body: some View {
        VStack {
            Text(space.description)
            
            Image("img_placeholder")
                .resizable()
                .scaledToFit()
                .padding(.vertical)

            Rectangle()
                .fill(Color.grayPwC)
                .frame(height: 1)
                .edgesIgnoringSafeArea(.horizontal)
            
            HStack {
                Image("avatar_placeholder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.trailing, 6)
                
                VStack(alignment: .leading) {
                    Text(space.name)
                        .font(.headline)
                        .foregroundStyle(Color.black)
                    
                    Text("\(space.memberCount) miembros")
                        .foregroundStyle(Color.gray)
                        .font(.custom("", size: 12))                }

                Spacer()

                Button(action: {
                    print("Botón Unirse presionado")
                }) {
                    Text("Unirse")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 30)
                        .background(Color.orangePwC)
                        .cornerRadius(5)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(5)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

struct SpaceSlideCardView_Previews: PreviewProvider {

    static var previews: some View {
        let spacesData = [Space(id: UUID(), name: "Ibex35", memberCount: 238, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", imageName: "ibex35")]
        
        SpaceSlideCardView(space: spacesData[0])
            .previewDevice("iPhone 15")
    }
}
