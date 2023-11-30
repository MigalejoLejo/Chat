//
//  RegImagePickerLabel.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 29/11/23.
//

import SwiftUI

struct RegImagePickerLabel: View {
    
    @State var avatarImage: Image?
    
    var body: some View {
        VStack{
            Group{
                if let avatarImage {
                    avatarImage
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 5)
                    
                } else {
                    Image("ic_plus")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .background{
                            Circle()
                                .fill(.white)
                                .shadow(radius: 5)
                        }
                }
            }        .padding(.bottom, 20)

            
            HStack{
                Image("ic_picture")
                if avatarImage != nil {
                    Text("haz selecionado una imagen")
                } else {
                    Text("selecciona una imagen")
                }
            }
            .foregroundColor(.black)
            
        }
        .padding(.vertical, 50)
        
    }
}

#Preview {
    RegImagePickerLabel()
}


