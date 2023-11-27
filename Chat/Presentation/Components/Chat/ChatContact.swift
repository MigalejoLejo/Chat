//
//  ChatListItem.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 23/11/23.
//

import SwiftUI

struct ChatContact: View {
    
    @State var contactImage: String = ""
    @State var contactName:String = ""
    @State var contactCompany:String = ""
    @State var lastMessage:String = ""
    
    
    var body: some View {
        HStack{
            Image(contactImage)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding()
            
            
            VStack{
                Group{
                    Text(contactName)
                    Text(contactCompany)
                    if !lastMessage.isEmpty {
                        Text(lastMessage)
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .foregroundColor(Color.black)
            .padding(.vertical, 2)
           
        }
        .background {
            RoundedRectangle(cornerRadius: 5.0)
                
                .fill(.white)
                .shadow(radius: 0.5)

        }
        .padding(.horizontal, 10)

    }
}

#Preview(){
    struct Preview: View {
        @State var contactImage: String = "avatar_placeholder"
        @State var contactName:String = "Miguel Correa"
        @State var contactCompany:String = "PwC Tenerife"
        @State var lastMessage:String = "Hola como estas?"

        var body: some View {
            
            ChatContact(contactImage: contactImage, contactName: contactName, contactCompany: contactCompany, lastMessage: lastMessage)
            
        }
    }

    return Preview()
    
}

#Preview(){
    struct Preview: View {
        @State var contactImage: String = "avatar_placeholder"
        @State var contactName:String = "Miguel Correa"
        @State var contactCompany:String = "PwC Tenerife"
        @State var lastMessage:String = "Hola como estas?"

        var body: some View {
            VStack{
                ChatContact(contactImage: contactImage, contactName: contactName, contactCompany: contactCompany, lastMessage: lastMessage)
                ChatContact(contactImage: contactImage, contactName: contactName, contactCompany: contactCompany, lastMessage: lastMessage)
                ChatContact(contactImage: contactImage, contactName: contactName, contactCompany: contactCompany, lastMessage: lastMessage)
                ChatContact(contactImage: contactImage, contactName: contactName, contactCompany: contactCompany, lastMessage: lastMessage)
  
            }
           
            
        }
    }

    return Preview()
    
}
