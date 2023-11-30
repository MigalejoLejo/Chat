//
//  RegFirstView.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 29/11/23.
//

import SwiftUI
//
//  RegisterView.swift
//  Chat
//

import PhotosUI
import SwiftUI

struct RegFirstView: View {
    
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    
    @State private var nombre = ""
    @State private var apellido = ""
    @State private var company = [""]
    @State private var employeePosition = [""]
    @State private var employment: [CompanyID:EmployeePosition] = [:]
    
    var body: some View {
        
        ScrollView{
            VStack{
                Text("!Vamos a conocernos!")
                    .font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 10)
                
                Text("antes de empezar nos gustaría conocerte un poco mejor")
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 40)
            
            PhotosPicker(selection: $avatarItem) {
                RegImagePickerLabel(avatarImage: avatarImage)
            }
          
            TextField("Nombre", text: $nombre)
                .regTextField()
            
            TextField("Apellido", text: $apellido)
                .regTextField()
            
            
            Button {
               ContinueButtonAction()
            } label: {
                RegButtonLabel(buttonName: "Continue")
            }
            
        }
        .onChange(of: avatarItem) {
            Task {
                if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                    if let uiImage = UIImage(data: data) {
                        avatarImage = Image(uiImage: uiImage)
                        return
                    }
                }
            }
        }
        
    }
    
   
}

extension RegFirstView {
    func loadPicture (){
        
    }
    
    func ContinueButtonAction () {
        
    }
}








#Preview {
    RegistrationView()
}
