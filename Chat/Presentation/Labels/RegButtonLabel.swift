//
//  ContinueButtonLabel.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 29/11/23.
//

import SwiftUI


struct RegButtonLabel: View {
    var buttonName:String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .frame(height: 50)
                .foregroundColor(.orangePwC)
                .padding(.horizontal)
                .padding(.vertical, 30)
            
            Text(buttonName)
                .foregroundColor(.white)
        }
    }
}


#Preview {
    struct Preview: View {
        var buttonName:String = "test button"
        var body: some View {
            RegButtonLabel(buttonName: buttonName)
        }
    }
    
    return Preview()
}
