//
//  SpaceCardView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//
import SwiftUI

struct SpaceCardView: View {
    var body: some View {

        VStack{
            HStack{
                Image("")
                VStack{
                    Text("Nombre Apellido")
                    Text("Cargo")
                }
            }
        }
        .frame(width: .infinity)
        .padding()
        .background(Color.grayPwC)



    }
}

struct SpaceCardView_Previews: PreviewProvider {
    static var previews: some View {
        SpaceCardView()
            .previewDevice("iPhone 15")
    }
}
