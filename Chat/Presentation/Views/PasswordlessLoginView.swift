//
//  PaswordlessLoginView.swift
//  Chat
//
//  Created by Miguel Alejandro Correa Avila on 27/11/23.
//

import SwiftUI
import FirebaseAuth


struct PasswordlessLoginView: View {
    @State private var email: String = "miguelalejandro.correa.avila@pwc.com"
   
    @EnvironmentObject var authViewModel: AuthViewModel
    @Binding var isShowingSideMenu: Bool

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(5)
                .padding(.horizontal)

            
            Button("Iniciar Sesión") {
                
                // TODO: Implement login with ActionCodeSettings
                
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal)
           
        }
        .padding()
        .fullScreenCover(isPresented: $authViewModel.isAuthenticated) {
            ChatView(isShowingSideMenu: $isShowingSideMenu)
        }
    }
    
    
    /* TODO: Finish configuration
    
     - https://medium.com/firebase-developers/using-firebase-auths-email-link-login-with-swiftui-dd2462412163
     - https://firebase.google.com/docs/auth/ios/email-link-auth?hl=en&authuser=0&_gl=1*7hmtf1*_ga*NTY2ODY2OTQwLjE2OTY1MDY3Njk.*_ga_CW55HF8NVT*MTcwMTA3NzkwMy4xNS4xLjE3MDEwNzc5MzcuMjYuMC4w#swift
    
    func ActionCodeSettings () {
        let actionCodeSettings = FirebaseAuth.ActionCodeSettings()
        actionCodeSettings.url = URL(string: "chat-b995d.firebaseapp.com")
        // The sign-in operation has to always be completed in the app.
        actionCodeSettings.handleCodeInApp = true
        actionCodeSettings.setIOSBundleID(Bundle.main.bundleIdentifier!)
        actionCodeSettings.setAndroidPackageName("com.test.Chat",
                                                 installIfNotAvailable: false, minimumVersion: "12")
    }
    
     */
    
}




#Preview(){
    struct Preview: View {
     
        @State var isShowingSideMenu: Bool = true

        var body: some View {
            
            PasswordlessLoginView(isShowingSideMenu: $isShowingSideMenu)
                .environmentObject(AuthViewModel())
            
        }
    }

    return Preview()
    
}
