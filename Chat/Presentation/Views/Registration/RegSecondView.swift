//
//  RegAddCompanies.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 29/11/23.
//

import SwiftUI

struct RegSecondView: View {
  
    @Binding var dictionary: [String: String]
       @State private var company: String = ""
       @State private var employeePosition: String = ""
       @State private var additionalPositions: [(String, String)] = []

       var body: some View {
           ScrollView {
               VStack{
                   Text("Empresas como consejero")
                       .font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                       .padding(.bottom, 10)
                   
                   Text("Necesitamos saber a que empresas perteneces")
                       .multilineTextAlignment(.center)
               }           
               .padding(.top, 40)

               
               ForEach(0..<additionalPositions.count, id: \.self) { index in
                   VStack {
                       TextField("Key", text: $additionalPositions[index].0)
                           .padding()
                           .background(Color.gray.opacity(0.1))
                           .cornerRadius(5)
                           .padding(.horizontal)

                       TextField("Value", text: $additionalPositions[index].1)
                           .padding()
                           .background(Color.gray.opacity(0.1))
                           .cornerRadius(5)
                           .padding(.horizontal)
                   }
                   .padding(.top, 20)

               }

               VStack {
                   TextField("Empresa", text: $company)
                       .padding()
                       .background(Color.gray.opacity(0.1))
                       .cornerRadius(5)
                       .padding(.horizontal)

                   TextField("Cargo", text: $employeePosition)
                       .padding()
                       .background(Color.gray.opacity(0.1))
                       .cornerRadius(5)
                       .padding(.horizontal)

                   Button{
                       if !company.isEmpty && !employeePosition.isEmpty {
                           additionalPositions.append((company, employeePosition))
                           company = ""
                           employeePosition = ""
                       }
                   } label: {
                       Image("ic_plus")
                           .resizable()
                           .frame(width: 40, height: 40)
                           .background{
                               RoundedRectangle(cornerRadius: 10)
                                   .fill(Color(uiColor: .white))
                                   .shadow(radius: 1)

                           }
                           .padding(.top)
                       
                   }
               }
               .padding(.top, 20)

               Button {
                   let allFields = additionalPositions + [(company, employeePosition)]
                   for (k, v) in allFields {
                       if !k.isEmpty && !v.isEmpty {
                           dictionary[k] = v
                       }
                   }
                   // Limpiar los campos después de agregar al diccionario
                   additionalPositions.removeAll()
                   company = ""
                   employeePosition = ""
               } label: {
                   RegButtonLabel(buttonName: "Continuar")
               }
               .padding()
           }
           .padding()
       }
    
//    
//    var body: some View {
//        Text("Hello World")
//    }
}

struct RegAddCompanies_Preview: PreviewProvider {
    @State static var dic: [String: String] = [:]
    
    static var previews: some View {
        RegSecondView(dictionary: $dic)
    }
}
