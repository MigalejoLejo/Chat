//
//  TextFieldModifier.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 29/11/23.
//

import SwiftUI

struct RegTextFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(5)
            .padding(.horizontal)
    }
}

extension View {
    func regTextField() -> some View {
        modifier(RegTextFieldModifier())
    }
}



#Preview {
    struct Preview: View {
        @State var input = ""
        var body: some View {
            VStack{
                TextField("Test", text: $input)
                    .regTextField() 
                TextField("Test", text: $input)
                    .regTextField() 
                TextField("Test", text: $input)
                    .regTextField() 
                TextField("Test", text: $input)
                    .regTextField()
            }
        }
    }
    
    return Preview()
}


