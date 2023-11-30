//
//  RegisterView.swift
//  Chat
//

import PhotosUI
import SwiftUI

struct RegistrationView: View {
    @State var dic: [String: String] = [:]

//    @State var views: [any View] = [RegFirstView(),        RegSecondView(dictionary: $dic)
//]
    @State var showingSheet = false
    @State var viewIndex:Int = 1

    
    var body: some View {
            TabView(selection: $viewIndex){
              RegFirstView()
                RegSecondView(dictionary: $dic)

            }
            .tag("Tag")
            .tabViewStyle(.page(indexDisplayMode: .always))
        
    }
    
    
    
    
}


#Preview {
    RegistrationView()
}
